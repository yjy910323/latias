package com.yan.latias.common.model;

import java.util.List;

import com.yan.latias.common.model.modular.Modular;

public class Plate {

	private String name;

	private List<Modular> modulars;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Modular> getModulars() {
		return modulars;
	}

	public void setModulars(List<Modular> modulars) {
		this.modulars = modulars;
	}

}
