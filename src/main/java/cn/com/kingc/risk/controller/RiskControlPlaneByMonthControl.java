package cn.com.kingc.risk.controller;

import cn.com.kingc.risk.dao.RiskcontrolplanebymonthDao;
import cn.com.kingc.risk.model.*;
import cn.com.kingc.risk.service.*;
import cn.com.kingc.risk.util.Properties;
import com.mkaq.core.Constants;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
//import org.kplatform4j.model.Framework;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.util.CellRangeAddress;
import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @author admistrator
 * @version 1.0
 * @created 27-8月-2017 11:15:38
 */
@RestController
@RequestMapping("/RiskControlPlaneByMonthControl")
public class RiskControlPlaneByMonthControl {

	@Autowired
	RiskcontrolplanebymonthService riskcontrolplanebymonthService;

	@Autowired
	RiskcontrolplanebymonthitemService riskcontrolplanebymonthitemService;

	@Autowired
	private RisksiteService risksiteService;

	@Autowired
	private RiskAnalyzeService riskAnalyzeService;
	@Autowired
	private RiskhazardService riskhazardService;
	//获取一个空的RiskDetailedList对象
	@RequestMapping(value = "/newRiskControlPlaneByMonth", method = RequestMethod.GET)
	@ApiOperation(value = "获取一个空的RiskControlPlaneByMonth对象", response = Riskcontrolplanebymonth.class, httpMethod = "GET", notes = "获取一个空的Riskcontrolplanebymonth对象")
	public Object getNewRiskDetailedList(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Framework framework = (Framework) session.getAttribute("framework");
		Riskcontrolplanebymonth riskcontrolplanebymonth = new Riskcontrolplanebymonth();
		riskcontrolplanebymonth.setCoalMineName(framework.getFrameWorkName());
		riskcontrolplanebymonth.setFrameWorkID(framework.getFramewordID());
		riskcontrolplanebymonth.setMonthPlaneID(0);
		return riskcontrolplanebymonth;
	}


	//获取一个空的RiskDetailedList对象
	@RequestMapping(value = "/newRiskControlPlaneByMonthitem", method = RequestMethod.GET)
	@ApiOperation(value = "获取一个空的RiskControlPlaneByMonthitem对象", response = Riskcontrolplanebymonthitem.class, httpMethod = "GET", notes = "获取一个空的Riskcontrolplanebymonth对象")
	public Object getRiskControlPlaneByMonth(HttpServletRequest request) {
		HttpSession session = request.getSession();
		Framework framework = (Framework) session.getAttribute("framework");
		Riskcontrolplanebymonthitem riskcontrolplanebymonthitem = new Riskcontrolplanebymonthitem();
		riskcontrolplanebymonthitem.setCoalMineName(framework.getFrameWorkName());
		riskcontrolplanebymonthitem.setFrameWorkID(framework.getFramewordID());
		riskcontrolplanebymonthitem.setItemID(0);
		return riskcontrolplanebymonthitem;
	}


	//获取安全风险管控计划中的风险状态
	@RequestMapping(value = "/getRiskSiteCheckStatus", method = RequestMethod.POST)
	public Object getRiskSiteCheckStatus(String year, String month,HttpServletRequest request) {
		HttpSession session = request.getSession();
		Framework framework = (Framework) session.getAttribute("framework");
		String frameworkID=framework.getFramewordID();
		return risksiteService.getRiskSiteCheckStatus(frameworkID,year,month);
	}
	//获取风险管控清单共有多少页
	@RequestMapping(value = "/PageCount", method = RequestMethod.POST)
	@ApiOperation(value = "风险管控计划共有多少页", httpMethod = "POST", notes = "风险管控计划共有多少页")
	public Object getPageCount(@RequestBody Riskcontrolplanebymonth riskcontrolplanebymonth) {
		try {
			int count = riskcontrolplanebymonthService.getRiskcontrolplanebymonthCountByRiskcontrolplanebymonth(riskcontrolplanebymonth);
			int page = count / riskcontrolplanebymonth.getPagesize();
			int ls = count % riskcontrolplanebymonth.getPagesize();
			if (ls > 0) {
				page++;
			}
			return page;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return 0;
	}

	//获取风险管控清单共有多少页
	@RequestMapping(value = "/PageCountJson", method = RequestMethod.POST)
	@ApiOperation(value = "风险管控计划共有多少页", httpMethod = "POST", notes = "风险管控计划共有多少页")
	@ResponseBody
	public Object getPageCountJson(@RequestBody Riskcontrolplanebymonth riskcontrolplanebymonth) {
		try {
			int count = riskcontrolplanebymonthService.getRiskcontrolplanebymonthCountByRiskcontrolplanebymonth(riskcontrolplanebymonth);
			int page = count / riskcontrolplanebymonth.getPagesize();
			int ls = count % riskcontrolplanebymonth.getPagesize();
			if (ls > 0) {
				page++;
			}
			Response response=new Response(200,page,"success");
			return response;
		} catch (Exception ex) {
			return new Response(200,null,ex.getMessage());
		}
	}

	//分页获取风险管控清单数据
	@RequestMapping(value = "/Page", method = RequestMethod.POST)
	@ApiOperation(value = "分页获取风险管控管控计划数据，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
	public Object getRiskSiteByPage(@RequestBody Riskcontrolplanebymonth riskcontrolplanebymonth) {
		try {
			List<Riskcontrolplanebymonth> risksites= riskcontrolplanebymonthService.getRiskcontrolplanebymonthByPageAndRiskcontrolplanebymonth(riskcontrolplanebymonth);
			for (Riskcontrolplanebymonth rs: risksites) {
				rs.getCoalMineName();
				List<Riskcontrolplanebymonthitem> risksiteList=rs.getmMonthPlanItems();
			}
			return  risksites;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	//保存Riskcontrolplanebymonth对象
	@RequestMapping(value = "/SaveRiskcontrolplanebymonth", method = RequestMethod.POST)
	@ApiOperation(value = "保存月度计划", response = Boolean.class, httpMethod = "POST", notes = "保存月度计划")
	public Object SaveRiskidentificationYearEntry(@RequestBody Riskcontrolplanebymonth riskcontrolplanebymonth) {
		try {
			//如果保存过了，则修改主表
			if(riskcontrolplanebymonth.getMonthPlaneID()>0){
				riskcontrolplanebymonthService.updateRiskcontrolplanebymonth(riskcontrolplanebymonth);
				//删除从表重新保存
				/*for (Riskcontrolplanebymonthitem riskcontrolplanebymonthItem:
						riskcontrolplanebymonth.getmMonthPlanItems()) {

					riskcontrolplanebymonthitemService.deleteRiskcontrolplanebymonthitem(riskcontrolplanebymonthItem);
				}*/
				riskcontrolplanebymonthService
						.deleteRiskitemAndOutofControl(riskcontrolplanebymonth.getMonthPlaneID());
				// 再保存从表
				if(riskcontrolplanebymonth.getmMonthPlanItems()!=null
						&& riskcontrolplanebymonth.getmMonthPlanItems().size()>0 ){
					riskcontrolplanebymonthitemService
							.addRiskcontrolplanebymonthitemList(riskcontrolplanebymonth.getmMonthPlanItems());
				}
				return true;

			}else
			{
				//先保存主表
				riskcontrolplanebymonthService.addRiskcontrolplanebymonth(riskcontrolplanebymonth);
				List<Riskcontrolplanebymonthitem> items=riskcontrolplanebymonth.getmMonthPlanItems();
				int MonthID=riskcontrolplanebymonth.getMonthPlaneID();
				if(MonthID>0) {
					// 再保存从表
					if(items!=null
							&& items.size()>0 ){
						for(int index=0;index<items.size();index++){
							//根据主表ID
							//更新所有从表
							items.get(index).setMonthPlaneID(MonthID);
						}
						
						riskcontrolplanebymonthitemService
								.addRiskcontrolplanebymonthitemList(items);
					}
					return true;
				}
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return false;
	}

	@RequestMapping(value = "/getRiskcontrolplanebymonthByID/{MonthPlaneID}/{judgeShow}",method = RequestMethod.POST)
	@ApiOperation(value = "获取一个月度计划", httpMethod = "GET",notes = "根据月度计划ID获取一个月度计划")
	@ResponseBody
	public Object getRiskcontrolplanebymonthByID(@ApiParam(name = "MonthPlaneID",value = "MonthPlaneID对象id") @PathVariable("MonthPlaneID") Integer MonthPlaneID ,@PathVariable("judgeShow") Integer judgeShow, HttpServletRequest request){
		try{
			if(MonthPlaneID!=-1) {
				request.getSession().setAttribute("MonthPlaneID", MonthPlaneID);
				request.getSession().setAttribute("judgeShow", judgeShow);
			}else{
				request.getSession().setAttribute("MonthPlaneID",null);
				request.getSession().setAttribute("judgeShow", judgeShow);

			}
			return "asd" ;
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/getRiskcontrolplanebymonthByID1/{MonthPlaneID}",method = RequestMethod.GET)
	@ApiOperation(value = "获取一个月度计划", httpMethod = "GET",notes = "根据月度计划ID获取一个月度计划")
	@ResponseBody
	public Object getRiskcontrolplanebymonthByID1(@ApiParam(name = "MonthPlaneID",value = "MonthPlaneID对象id") @PathVariable("MonthPlaneID") Integer MonthPlaneID){
		try{



			return  riskcontrolplanebymonthService.getRiskcontrolplanebymonth(MonthPlaneID);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}


	@RequestMapping(value = "/deleteRiskcontrolplaneByMonthPlaneID/{MonthPlaneID}",method = RequestMethod.DELETE)
	@ApiOperation(value = "删除月度计划对象",response = Risksite.class,httpMethod = "DELETE",notes = "删除RiskSite对象")
	public Object deleteRiskcontrolplaneByMonthPlaneID(
			@ApiParam(name = "MonthPlaneID",value = "Risksite对象id")
			@PathVariable("MonthPlaneID") Integer MonthPlaneID){
		try{
			//服务会自动删除从表
			//再删除主表信息
			return riskcontrolplanebymonthService.deleteRiskcontrolplanebymonthByID(MonthPlaneID);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/deleteRiskcontrolplaneItemByItemID/{ItemID}",method = RequestMethod.DELETE)
	@ApiOperation(value = "删除月度计划一条内容",response = Risksite.class,httpMethod = "DELETE",notes = "删除RiskcontrolplaneItem对象")
	public Object deleteRiskcontrolplaneItemByItemID(
			@ApiParam(name = "ItemID",value = "RiskcontrolplaneItem对象ItemID")
			@PathVariable("ItemID") Integer ItemID){
		try{
			//服务会自动删除从表
			//再删除主表信息
			return riskcontrolplanebymonthitemService.deleteRiskcontrolplanebymonthitemByID(ItemID);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/getSimpleRisksite/{mriskSiteID}",method = RequestMethod.POST)
	@ApiOperation(value = "根据ID查找risksite",response = List.class,httpMethod = "POST",notes = "根据ID查找risksite")
	public Object getSimpleRisksite(
			@ApiParam(name = "mriskSiteID",value = "Risksite对象riskSiteID")
			@PathVariable("mriskSiteID") String mriskSiteID){
		try{
			List<Risksite> list = new ArrayList<Risksite>();
			if(mriskSiteID.indexOf(",")>-1) {
				String[] riskSiteList = mriskSiteID.split(",");
				for (int i = 0; i < riskSiteList.length; i++) {
					Risksite riskrist = risksiteService.getRisksite(Integer.parseInt(riskSiteList[i]));
					list.add(riskrist);
				}
			}else{
				Risksite riskrist = risksiteService.getRisksite(Integer.parseInt(mriskSiteID));
				list.add(riskrist);
			}
			//根据ID查找risksite

			return list;
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/getHazardCount",method = RequestMethod.POST)
	@ResponseBody
	public Object getHazardCount(String frameWorkID, String riskSiteFullNumber){
		try{

			return risksiteService.getHazardCount(frameWorkID,riskSiteFullNumber);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}
	@RequestMapping(value = "/getHazardS",method = RequestMethod.POST)
	@ResponseBody
	public Object getHazardS(String frameWorkID, String riskSiteFullNumber){
		try{

			return riskhazardService.getHazards(frameWorkID,riskSiteFullNumber);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/getControlMeasureCount",method = RequestMethod.POST)
	@ResponseBody
	public Object getControlMeasureCount(String frameWorkID, String riskSiteFullNumber){
		try{
			//服务会自动删除从表
			//再删除主表信息
			return risksiteService.getControlMeasureCount(frameWorkID,riskSiteFullNumber);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}
	//按地点类型统计分析
	@RequestMapping(value = "/getRiskAnalyzeByPlaceType",method = RequestMethod.POST)
	@ResponseBody
	public Object getRiskAnalyzeByPlaceType(String frameWorkID){
		try{

			return riskAnalyzeService.getRiskAnalyzeByPlaceType(frameWorkID);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	//按灾害类型统计
	@RequestMapping(value = "/getRiskAnalyzeByDamageType",method = RequestMethod.POST)
	@ResponseBody
	public Object getRiskAnalyzeByDamageType(String frameWorkID,String riskDamageType){
		try{

			return riskAnalyzeService.getRiskAnalyzeByDamageType(frameWorkID,riskDamageType);
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return null;
	}

	//根据查询条件查询风险点
	@RequestMapping(value = "/RiskSiteBySearch", method = RequestMethod.POST)
	@ApiOperation(value = "查询条件获取风险风险点，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
	public Object getRiskSiteByPage(@RequestBody Risksite risksite) {
		try {
			List<Risksite> risksites= risksiteService.getTopRisksite(
					risksite.getCoalMineName(),risksite.getFrameWorkID()
			);
//            for (Risksite rs: risksites) {
//                rs.getCoalMineName();
//                List<Risksite> risksiteList=rs.getmChildRiskSite();
//                for (Risksite risksite1 : risksiteList) {
//                    risksite1.getCoalMineName();
//                }
//            }
			return  risksites;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	//根据查询条件查询风险点
	@RequestMapping(value = "/RiskSiteBySearchHazardAndMeasure", method = RequestMethod.POST)
	@ApiOperation(value = "查询条件获取风险风险点，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
	public Object RiskSiteBySearchHazardAndMeasure(@RequestBody Risksite risksite) {
		try {
			List<Risksite> risksites= risksiteService.getRisksiteData(
					risksite);
//            for (Risksite rs: risksites) {
//                rs.getCoalMineName();
//                List<Risksite> risksiteList=rs.getmChildRiskSite();
//                for (Risksite risksite1 : risksiteList) {
//                    risksite1.getCoalMineName();
//                }
//            }
			return  risksites;
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		return null;
	}

	@RequestMapping(value = "/getRiskcontrolplanebymonthData", method = RequestMethod.POST)
	@ApiOperation(value = "查询条件获取风险风险点，返回List结合", response = List.class, httpMethod = "POST", notes = "分页获取风险管控清单数据，返回List结合")
	public Object  getRiskcontrolplanebymonthData(@RequestBody Riskcontrolplanebymonth riskcontrolplanebymonth){
		return riskcontrolplanebymonthService.getRiskcontrolplanebymonthData(riskcontrolplanebymonth);
	}


	/**
	 * 根据查询条件添加风险点
	 */
	public void addRiskSiteBySearch(){

	}

	/**
	 * 根据采掘接续计划添加风险点
	 */
	public void addRiskSiteFromCaiJueProductionPlane(){

	}

	/**
	 * 创建月度管控计划
	 */
	public Riskcontrolplanebymonth createRiskControlPlaneByMonth(){
		return null;
	}


	@RequestMapping(value = "/getExcell", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public void getExcell(String ExcellID, String ExcellName,
						  String planName,String plantype,
						  String majortype,HttpServletResponse response, HttpServletRequest request) {
		response.setContentType("text/html;charset=UTF-8");
		try {
			Properties properties = new Properties();
			String fileUploadUrl = properties.getProperty("fileUploadUrl");
			request.setCharacterEncoding("UTF-8");
			// 第一步，创建一个webbook，对应一个Excel文件
			HSSFWorkbook wb = new HSSFWorkbook();
			// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
			HSSFSheet sheet = wb.createSheet(ExcellName.split("\\.")[0]);
			// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
			sheet.setDefaultColumnWidth(17);
			sheet.setColumnWidth(0, 2024);

			HSSFRow row = sheet.createRow((int) 0);
			// 第四步，创建单元格，并设置值表头 设置表头居中
			HSSFCellStyle style =(HSSFCellStyle) wb.createCellStyle();
			style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
			HSSFFont headerFont = (HSSFFont) wb.createFont();
			headerFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);// 字体加粗
			style.setFont(headerFont);
			style.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
			style.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
			style.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
			style.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
			style.setWrapText(true);
			//设置内容样式
			HSSFCellStyle style1 =(HSSFCellStyle) wb.createCellStyle();
			style1.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
			style1.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
			style1.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
			style1.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
			style1.setWrapText(true);
			HSSFCell cell = row.createCell((short) 0);
			cell.setCellValue("序号");
			cell.setCellStyle(style);
			cell = row.createCell((short) 1);
			cell.setCellValue("计划名称");
			cell.setCellStyle(style);
			cell = row.createCell((short) 2);
			cell.setCellValue("计划类型");
			cell.setCellStyle(style);
			cell = row.createCell((short) 3);
			cell.setCellValue("专业");
			cell.setCellStyle(style);
			cell = row.createCell((short) 4);
			cell.setCellValue("检查频次");
			cell.setCellStyle(style);
			cell = row.createCell((short) 5);
			cell.setCellValue("风险管控内容");
			cell.setCellStyle(style);
			cell = row.createCell((short) 6);
			cell.setCellValue("编制单位");
			cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
			cell = row.createCell((short) 7);
			cell.setCellValue("编制人");
			cell.setCellStyle(style);
			cell = row.createCell((short) 8);
			cell.setCellValue("状态");
			cell.setCellStyle(style);

			// 第五步，写入实体数据 实际应用中这些数据从数据库得到，
			Riskcontrolplanebymonth riskcontrolplanebymonth1 = new Riskcontrolplanebymonth();
			HttpSession session = request.getSession();
			Framework framework = (Framework) session.getAttribute("framework");
			riskcontrolplanebymonth1.setFrameWorkID(framework.getFramewordID());
			riskcontrolplanebymonth1.setCoalMineName(framework.getFrameWorkName());
			riskcontrolplanebymonth1.setMonthPlanName(planName);
			riskcontrolplanebymonth1.setMonthPlanMajorType(majortype);
			riskcontrolplanebymonth1.setMonthPlanType(plantype);
			List<Riskcontrolplanebymonth> riskcontrolplanebymonthList = riskcontrolplanebymonthService.getRiskcontrolplanebymonthData(riskcontrolplanebymonth1);
			for (int i = 0; i < riskcontrolplanebymonthList.size(); i++) {
				row = sheet.createRow((int) i + 1);
				Riskcontrolplanebymonth riskcontrolplanebymonth = (Riskcontrolplanebymonth) riskcontrolplanebymonthList.get(i);
				// 第四步，创建单元格，并设置值
				row.createCell((short) 0).setCellValue(i + 1);
				row.createCell((short) 1).setCellValue(riskcontrolplanebymonth.getMonthPlanName());
				row.createCell((short) 2).setCellValue(riskcontrolplanebymonth.getMonthPlanType());

				row.createCell((short) 3).setCellValue(riskcontrolplanebymonth.getMonthPlanMajorType());
				row.createCell((short) 4).setCellValue(riskcontrolplanebymonth.getMonthPlanFrequency());
				row.createCell((short) 5).setCellValue(riskcontrolplanebymonth.getMonthPlanContent());
				row.createCell((short) 6).setCellValue(riskcontrolplanebymonth.getMonthPlanCreateUnit());
				row.createCell((short) 7).setCellValue(riskcontrolplanebymonth.getMonthPlanCreater());
				if(riskcontrolplanebymonth.getMonthPlanStatus()){

					row.createCell((short) 8).setCellValue("已执行");

				}else{

					row.createCell((short) 8).setCellValue("未执行");

				}
				Iterator<Cell> iterator = row.cellIterator();
				while (iterator.hasNext()) {
					Cell next = iterator.next();
					next.setCellStyle(style1);
				}
			}
			// 第六步，将文件存到指定位置
			File pathFile = new File(fileUploadUrl + ExcellName);
			if (pathFile.exists()) {
				pathFile.delete();

			}
			FileOutputStream fout = new FileOutputStream(fileUploadUrl + ExcellName);
			wb.write(fout);
			fout.close();
//            exportExcel(res, workbook);
			//FileInputStream fileInputStream=new FileInputStream(pathFile);
			// fileInputStream.read()
			File file = new File(fileUploadUrl + ExcellName);

			InputStream fis = new BufferedInputStream(new FileInputStream(fileUploadUrl + ExcellName));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			// 清空response
			response.reset();
			// 设置response的Header
			response.setContentType("application/vnd.ms-excel;charset=UTF-8");
			response.addHeader("Content-Disposition", "attachment;filename=" + new String(ExcellName.getBytes("gb2312"), "ISO8859-1"));
			response.addHeader("Content-Length", "" + file.length());//file.length()
			OutputStream toClient = new BufferedOutputStream(
					response.getOutputStream());
			toClient.write(buffer);
			toClient.flush();
			toClient.close();
			file.delete();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}
	@RequestMapping(value = "/getRiskcontrolplanebymonthDataStatus", method = RequestMethod.POST)
	@ApiOperation(value = "查询未执行的风险风险点，返回List结合", response = List.class, httpMethod = "POST")
	public Object  getRiskcontrolplanebymonthDataStatus(HttpServletRequest request){
		Framework framework = (Framework) request.getSession().getAttribute("framework");
		Riskcontrolplanebymonth riskcontrolplanebymonth = new Riskcontrolplanebymonth();
		riskcontrolplanebymonth.setCoalMineName(framework.getFrameWorkName());
		riskcontrolplanebymonth.setFrameWorkID(framework.getFramewordID());
		riskcontrolplanebymonth.setMonthPlanStatus(false);
		return riskcontrolplanebymonthService.getRiskcontrolplanebymonthData(riskcontrolplanebymonth);
	}



	@RequestMapping(value = "/getExcellByMangLai", method = {RequestMethod.POST, RequestMethod.GET})
	@ResponseBody
	public void getExcellByMangLai(String ExcellID, String ExcellName,
						  String planName,String plantype,
						  String majortype,HttpServletResponse response, HttpServletRequest request) {
		response.setContentType("text/html;charset=UTF-8");
		try {
			Properties properties = new Properties();
			String fileUploadUrl = properties.getProperty("fileUploadUrl");
			request.setCharacterEncoding("UTF-8");
			// 第一步，创建一个webbook，对应一个Excel文件
			HSSFWorkbook wb = new HSSFWorkbook();
			// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
			HSSFSheet sheet = wb.createSheet(ExcellName.split("\\.")[0]);
			// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
			sheet.setDefaultColumnWidth(17);
			sheet.setColumnWidth(0, 2024);

			HSSFRow row = sheet.createRow((int) 0);
			// 第四步，创建单元格，并设置值表头 设置表头居中
			HSSFCellStyle style =(HSSFCellStyle) wb.createCellStyle();
	
			style.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);
			style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
			HSSFFont headerFont = (HSSFFont) wb.createFont();
			headerFont.setBoldweight(HSSFFont.BOLDWEIGHT_BOLD);// 字体加粗
			style.setFont(headerFont);
			style.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
			style.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
			style.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
			style.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
			style.setWrapText(true);
			//设置内容样式
			HSSFCellStyle style1 =(HSSFCellStyle) wb.createCellStyle();
			style1.setBorderBottom(HSSFCellStyle.BORDER_THIN); // 下边框
			style1.setBorderLeft(HSSFCellStyle.BORDER_THIN);// 左边框
			style1.setBorderTop(HSSFCellStyle.BORDER_THIN);// 上边框
			style1.setBorderRight(HSSFCellStyle.BORDER_THIN);// 右边框
			style1.setVerticalAlignment(HSSFCellStyle.VERTICAL_CENTER);// 创建一个居中格式
			style1.setAlignment(HSSFCellStyle.ALIGN_CENTER);
			style1.setWrapText(true);
			HSSFCell cell = row.createCell((short) 0);
			cell.setCellValue("序号");
			cell.setCellStyle(style);
			cell = row.createCell((short) 1);
			cell.setCellValue("计划名称");
			cell.setCellStyle(style);
			cell = row.createCell((short) 2);
			cell.setCellValue("计划类型");
			cell.setCellStyle(style);
			cell = row.createCell((short) 3);
			cell.setCellValue("专业");
			cell.setCellStyle(style);
			cell = row.createCell((short) 4);
			cell.setCellValue("检查频次");
			cell.setCellStyle(style);
			cell = row.createCell((short) 5);
			cell.setCellValue("风险管控内容");
			cell.setCellStyle(style);
			cell = row.createCell((short) 6);
			cell.setCellValue("编制单位");
			cell.setCellStyle(style);
//            cell = row.createCell((short) 6);
//            cell.setCellValue("危险程度");
//            cell.setCellStyle(style);
			cell = row.createCell((short) 7);
			cell.setCellValue("编制人");
			cell.setCellStyle(style);
			cell = row.createCell((short) 8);
			cell.setCellValue("状态");
			cell.setCellStyle(style);




			cell = row.createCell((short) 9);
			cell.setCellValue("序号");
			cell.setCellStyle(style);
			cell = row.createCell((short) 10);
			cell.setCellValue("风险点");
			cell.setCellStyle(style);
			cell = row.createCell((short) 11);
			cell.setCellValue("灾害类型");
			cell.setCellStyle(style);
			cell = row.createCell((short) 12);
			cell.setCellValue("风险点等级");
			cell.setCellStyle(style);
			cell = row.createCell((short) 13);
			cell.setCellValue("危险程度");
			cell.setCellStyle(style);
			cell = row.createCell((short) 14);
			cell.setCellValue("管控措施");
			cell.setCellStyle(style);
			cell = row.createCell((short) 15);
			cell.setCellValue("重点管控工作安排");
			cell.setCellStyle(style);
			cell = row.createCell((short) 16);
			cell.setCellValue("管控开始时间");
			cell.setCellStyle(style);
			cell = row.createCell((short) 17);
			cell.setCellValue("管控结束时间");
			cell.setCellStyle(style);
			cell = row.createCell((short) 18);
			cell.setCellValue("责任部门");
			cell.setCellStyle(style);
			cell = row.createCell((short) 19);
			cell.setCellValue("责任人");
			cell.setCellStyle(style);



			// 第五步，写入实体数据 实际应用中这些数据从数据库得到，
			Riskcontrolplanebymonth riskcontrolplanebymonth1 = new Riskcontrolplanebymonth();
			HttpSession session = request.getSession();
			Framework framework = (Framework) session.getAttribute("framework");
			riskcontrolplanebymonth1.setFrameWorkID(framework.getFramewordID());
			riskcontrolplanebymonth1.setCoalMineName(framework.getFrameWorkName());
			riskcontrolplanebymonth1.setMonthPlanName(planName);
			riskcontrolplanebymonth1.setMonthPlanMajorType(majortype);
			riskcontrolplanebymonth1.setMonthPlanType(plantype);
			List<Riskcontrolplanebymonth> riskcontrolplanebymonthList = riskcontrolplanebymonthService.getRiskcontrolplanebymonthData(riskcontrolplanebymonth1);
			int num = 1;
			int mergeCell = 0;
			for (int i = 0; i < riskcontrolplanebymonthList.size(); i++) {
				Riskcontrolplanebymonth riskcontrolplanebymonth = (Riskcontrolplanebymonth) riskcontrolplanebymonthList.get(i);
				List<Riskcontrolplanebymonthitem>   listmonthitem = riskcontrolplanebymonth.getmMonthPlanItems();
//判断有没有子数据
				if(listmonthitem != null && listmonthitem.size() > 0) {
					for(int a=0;a<listmonthitem.size();a++) {
						Riskcontrolplanebymonthitem riskcontrolplanebymonthitem = (Riskcontrolplanebymonthitem) listmonthitem.get(a);
						row = sheet.createRow(num);
						num++;

						// 第四步，创建单元格，并设置值
						row.createCell((short) 0).setCellValue(i + 1);
						row.createCell((short) 1).setCellValue(riskcontrolplanebymonth.getMonthPlanName());
						row.createCell((short) 2).setCellValue(riskcontrolplanebymonth.getMonthPlanType());

						row.createCell((short) 3).setCellValue(riskcontrolplanebymonth.getMonthPlanMajorType());
						row.createCell((short) 4).setCellValue(riskcontrolplanebymonth.getMonthPlanFrequency());
						row.createCell((short) 5).setCellValue(riskcontrolplanebymonth.getMonthPlanContent());
						row.createCell((short) 6).setCellValue(riskcontrolplanebymonth.getMonthPlanCreateUnit());
						row.createCell((short) 7).setCellValue(riskcontrolplanebymonth.getMonthPlanCreater());
						if (riskcontrolplanebymonth.getMonthPlanStatus()) {

							row.createCell((short) 8).setCellValue("已执行");

						} else {

							row.createCell((short) 8).setCellValue("未执行");

						}
						row.createCell((short) 9).setCellValue(a+1);
						row.createCell((short) 10).setCellValue(riskcontrolplanebymonthitem.getName());
						row.createCell((short) 11).setCellValue(riskcontrolplanebymonthitem.getRiskDamageType());
						row.createCell((short) 12).setCellValue(riskcontrolplanebymonthitem.getRiskLevel());
						row.createCell((short) 13).setCellValue(riskcontrolplanebymonthitem.getRiskColor());
						row.createCell((short) 14).setCellValue(riskcontrolplanebymonthitem.getControlMeasureCount());
						row.createCell((short) 15).setCellValue(riskcontrolplanebymonthitem.getKeyContent());
						row.createCell((short) 16).setCellValue(riskcontrolplanebymonthitem.getPlanStartDate());
						row.createCell((short) 17).setCellValue(riskcontrolplanebymonthitem.getPlanEndDate());
						row.createCell((short) 18).setCellValue(riskcontrolplanebymonthitem.getUnitName());
						row.createCell((short) 19).setCellValue(riskcontrolplanebymonthitem.getItemCheckerName());

						Iterator<Cell> iterator = row.cellIterator();
						while (iterator.hasNext()) {
							Cell next = iterator.next();
							next.setCellStyle(style1);
						}
					}
				} else {
					row = sheet.createRow(num);
					num ++;
					// 第四步，创建单元格，并设置值
					row.createCell((short) 0).setCellValue(i + 1);
					row.createCell((short) 1).setCellValue(riskcontrolplanebymonth.getMonthPlanName());
					row.createCell((short) 2).setCellValue(riskcontrolplanebymonth.getMonthPlanType());

					row.createCell((short) 3).setCellValue(riskcontrolplanebymonth.getMonthPlanMajorType());
					row.createCell((short) 4).setCellValue(riskcontrolplanebymonth.getMonthPlanFrequency());
					row.createCell((short) 5).setCellValue(riskcontrolplanebymonth.getMonthPlanContent());
					row.createCell((short) 6).setCellValue(riskcontrolplanebymonth.getMonthPlanCreateUnit());
					row.createCell((short) 7).setCellValue(riskcontrolplanebymonth.getMonthPlanCreater());
					if (riskcontrolplanebymonth.getMonthPlanStatus()) {

						row.createCell((short) 8).setCellValue("已执行");

					} else {

						row.createCell((short) 8).setCellValue("未执行");

					}
					row.createCell((short) 9).setCellValue("");
					row.createCell((short) 10).setCellValue("");
					row.createCell((short) 11).setCellValue("");
					row.createCell((short) 12).setCellValue("");
					row.createCell((short) 13).setCellValue("");
					row.createCell((short) 14).setCellValue("");
					row.createCell((short) 15).setCellValue("");
					row.createCell((short) 16).setCellValue("");
					row.createCell((short) 17).setCellValue("");
					row.createCell((short) 18).setCellValue("");
					row.createCell((short) 19).setCellValue("");

					Iterator<Cell> iterator = row.cellIterator();
					while (iterator.hasNext()) {
						Cell next = iterator.next();
						next.setCellStyle(style1);
					}
				}

				//合并单元格
				if(listmonthitem != null && listmonthitem.size() > 0) {
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 0,0));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 1,1));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 2,2));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 3,3));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 4,4));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 5,5));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 6,6));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 7,7));
					sheet.addMergedRegion(new CellRangeAddress(mergeCell+1,mergeCell+listmonthitem.size(), 8,8));
					mergeCell += listmonthitem.size();
				}else {
					mergeCell += 1;
				}

			}

			// 第六步，将文件存到指定位置
			File pathFile = new File(fileUploadUrl + ExcellName);
			if (pathFile.exists()) {
				pathFile.delete();

			}
			FileOutputStream fout = new FileOutputStream(fileUploadUrl + ExcellName);
			wb.write(fout);
			fout.close();
//            exportExcel(res, workbook);
			//FileInputStream fileInputStream=new FileInputStream(pathFile);
			// fileInputStream.read()
			File file = new File(fileUploadUrl + ExcellName);

			InputStream fis = new BufferedInputStream(new FileInputStream(fileUploadUrl + ExcellName));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			// 清空response
			response.reset();
			// 设置response的Header
			response.setContentType("application/vnd.ms-excel;charset=UTF-8");
			response.addHeader("Content-Disposition", "attachment;filename=" + new String(ExcellName.getBytes("gb2312"), "ISO8859-1"));
			response.addHeader("Content-Length", "" + file.length());//file.length()
			OutputStream toClient = new BufferedOutputStream(
					response.getOutputStream());
			toClient.write(buffer);
			toClient.flush();
			toClient.close();
			file.delete();
		} catch (Exception e) {
			e.printStackTrace();

		}
	}

}