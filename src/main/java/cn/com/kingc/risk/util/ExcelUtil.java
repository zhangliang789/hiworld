package cn.com.kingc.risk.util;

import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;

import java.io.FileInputStream;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by txianwei on 2017/4/29.
 */
public class ExcelUtil {
    private String filePath;

    public ExcelUtil() {
    }

    public ExcelUtil(String filePath) {
        this.filePath = filePath;
    }

    /**
     * 获取某个单元格的值
     * @param sheetIndex
     * @param rowIndex
     * @param cellIndex
     * @return
     * @throws Exception
     */
    public Object getCellValue(int sheetIndex, int rowIndex, int cellIndex) throws Exception {
        Object result = null;
        // 创建对Excel工作簿文件的引用
        HSSFWorkbook workbook = new HSSFWorkbook(new FileInputStream(filePath));
        if (workbook != null) {
            HSSFSheet sheet = workbook.getSheetAt(sheetIndex);
            if(sheet!=null){
                // 读取设计总长度
                HSSFRow row = sheet.getRow(rowIndex);
                HSSFCell cell = row.getCell(cellIndex);

                switch (cell.getCellType()) {
                    case Cell.CELL_TYPE_STRING:
                        result = cell.getStringCellValue();
                        break;
                    case Cell.CELL_TYPE_NUMERIC:
                        String cellValue = "";
                        if (HSSFDateUtil.isCellDateFormatted(cell)) {    //判断是日期类型
                            SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
                            Date dt = HSSFDateUtil.getJavaDate(cell.getNumericCellValue());//获取成DATE类型
                            cellValue = dateformat.format(dt);
                        }else{
                            DecimalFormat df = new DecimalFormat("0");
                            cellValue = df.format(cell.getNumericCellValue());
                        }

                        result = cellValue;
                        break;
                    case Cell.CELL_TYPE_BOOLEAN:
                        result = cell.getBooleanCellValue();
                        break;
                    case Cell.CELL_TYPE_FORMULA:
                        //result = cell.getCellFormula();
                        if (HSSFDateUtil.isCellDateFormatted(cell)) {    //判断是日期类型
                            SimpleDateFormat dateformat = new SimpleDateFormat("yyyy/MM/dd");
                            Date dt = HSSFDateUtil.getJavaDate(cell.getNumericCellValue());//获取成DATE类型
                            cellValue = dateformat.format(dt);
                        }else{
                            DecimalFormat df = new DecimalFormat("0");
                            cellValue = df.format(cell.getNumericCellValue());
                        }
                        result = cellValue;
                        break;
                    case Cell.CELL_TYPE_ERROR:
                        result = cell.getErrorCellValue();
                        break;
                    case Cell.CELL_TYPE_BLANK:
                        break;
                    default:
                        break;
                }
            }else{
                result=null;
            }

        } else {
            result=null;
        }

        return result;
    }

}
