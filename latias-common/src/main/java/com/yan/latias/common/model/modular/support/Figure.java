package com.yan.latias.common.model.modular.support;

import java.math.BigDecimal;
import java.util.Date;

public class Figure {

    private Date start;
    private Date end;
    private BigDecimal value;

    public Figure() {
    }

    public Figure(BigDecimal value) {
        value.setScale(2, BigDecimal.ROUND_HALF_UP);
        this.value = value;
    }

    public Figure(int val) {
        this(new BigDecimal(val));
    }

    public Figure(double val) {
        this(new BigDecimal(val));
    }

    public Date getStart() {
        return start;
    }

    public void setStart(Date start) {
        this.start = start;
    }

    public Date getEnd() {
        return end;
    }

    public void setEnd(Date end) {
        this.end = end;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }

}
