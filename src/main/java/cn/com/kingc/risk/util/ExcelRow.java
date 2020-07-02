package cn.com.kingc.risk.util;

import java.io.Serializable;
import java.util.List;

/**
 * Created by txianwei on 2017/5/2.
 */
public class ExcelRow implements Serializable{


    private static final long serialVersionUID = 5962922177967762664L;
    private List<ExcelCell> cells;

    public List<ExcelCell> getCells() {
        return cells;
    }

    public void setCells(List<ExcelCell> cells) {
        this.cells = cells;
    }
}
