package com.yan.latias.common.model.modular.support;

import java.math.BigDecimal;

public class Figures {

	public static Figure ratio(Figure value, Figure onValue) {
		Figure figure = new Figure();
		BigDecimal raito = value.getValue().subtract(onValue.getValue()).divide(onValue.getValue());
		figure.setValue(raito);
		return figure;
	}

	
	public static Figure diff(Figure value, Figure onValue) {
		Figure figure = new Figure();
		BigDecimal diff = value.getValue().subtract(onValue.getValue());
		figure.setValue(diff);
		return figure;
	}

}
