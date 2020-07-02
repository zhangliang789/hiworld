package cn.com.kingc.risk.util;

import java.io.Serializable;

/**
 * Created by txianwei on 2017/5/2.
 */
public class ExcelCell implements Serializable{

    private static final long serialVersionUID = -4895969802916644380L;
    private String rownum;
    private String columnnum;
    private String value;

    public String getRownum() {
        return rownum;
    }

    public void setRownum(String rownum) {
        this.rownum = rownum;
    }

    public String getColumnnum() {
        return columnnum;
    }

    public void setColumnnum(String columnnum) {
        this.columnnum = columnnum;
    }

    public String getValue() {
        return value.trim();
    }

    public void setValue(String value) {
        this.value = value;
    }
}
