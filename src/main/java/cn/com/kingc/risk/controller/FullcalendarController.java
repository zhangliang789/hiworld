package cn.com.kingc.risk.controller;

import static org.hamcrest.CoreMatchers.nullValue;

import java.text.ParseException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.platform4j.model.Framework;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.com.kingc.risk.model.FullcalendarEvents;
import cn.com.kingc.risk.model.Riskcontrolplanebymonthitem;
import cn.com.kingc.risk.service.RiskcontrolplanebymonthitemService;
import cn.com.kingc.risk.service.RisksiteService;

@Controller
public class FullcalendarController {
	@Autowired
    private RiskcontrolplanebymonthitemService riskcontrolplanebymonthitemService;
	@Autowired
	private RisksiteService risksiteService;
	@RequestMapping("/gotoFullcalendar.do")
	public String gotoFullcalendar(){
		return "Fullcalendar";
	}
	@RequestMapping("findriskcontrolplanebymonthitemAll")
	@ResponseBody
	public Object findriskcontrolplanebymonthitemAll(HttpServletRequest request){
		try {
			HttpSession session = request.getSession();
	        Framework framework = (Framework) session.getAttribute("framework");
			FullcalendarEvents fullcalendarEvents=new FullcalendarEvents();
			fullcalendarEvents.setCode(0);
			Riskcontrolplanebymonthitem riskcontrolplanebymonthitem=new Riskcontrolplanebymonthitem();
			riskcontrolplanebymonthitem.setFrameWorkID(framework.getFramewordID());
			fullcalendarEvents.setData(riskcontrolplanebymonthitemService.getRiskcontrolplanebymonthitemData(riskcontrolplanebymonthitem));
			fullcalendarEvents.setDesc("SUCCESS");
			return fullcalendarEvents;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@RequestMapping("findFullcalendaRisksite")
	@ResponseBody
	public Object findFullcalendaRisksite(Integer itemID){
		Riskcontrolplanebymonthitem riskcontrolplanebymonthitem=riskcontrolplanebymonthitemService.getRiskcontrolplanebymonthitem(itemID);
		if(riskcontrolplanebymonthitem!=null){
			return risksiteService.getRisksite(riskcontrolplanebymonthitem.getRiskSiteID());
		}else{
			return null;
		}
	}
}
