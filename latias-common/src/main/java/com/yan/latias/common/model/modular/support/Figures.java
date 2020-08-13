package com.yan.latias.common.model.modular.support;

import java.math.BigDecimal;

public class Figures {

	public static Figure ratio(Figure value, Figure onValue) {
		BigDecimal raito = value.getValue().subtract(onValue.getValue()).divide(onValue.getValue(), 2, BigDecimal.ROUND_HALF_UP);
		Figure figure = new Figure(raito);
		return figure;
	}

	
	public static Figure diff(Figure value, Figure onValue) {
		BigDecimal diff = value.getValue().subtract(onValue.getValue()).divide(BigDecimal.ONE, 2, BigDecimal.ROUND_HALF_UP);
		Figure figure = new Figure(diff);
		return figure;
	}

}
