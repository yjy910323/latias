package com.yan.latias.common.model.modular.support;

public class Metric {

	private String name;

	private Figure value;
	private Figure onValue;

	private Figure ratio;
	private Figure diff;

	public Metric(String name, Figure value, Figure onValue) {
		this.name = name;
		this.value = value;
		this.onValue = onValue;
		this.ratio = Figures.ratio(value, onValue);
		this.diff = Figures.diff(value, onValue);
	}

	public Figure getValue() {
		return value;
	}

	public void setValue(Figure value) {
		this.value = value;
	}

	public Figure getOnValue() {
		return onValue;
	}

	public void setOnValue(Figure onValue) {
		this.onValue = onValue;
	}

	public Figure getRatio() {
		return ratio;
	}

	public void setRatio(Figure ratio) {
		this.ratio = ratio;
	}

	public Figure getDiff() {
		return diff;
	}

	public void setDiff(Figure diff) {
		this.diff = diff;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
