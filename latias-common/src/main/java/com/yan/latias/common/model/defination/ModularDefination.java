package com.yan.latias.common.model.defination;

import java.util.List;

import com.yan.latias.common.model.modular.Modular;

public class ModularDefination {

    private Long id;
    private String name;
    private Boolean nameVisible;
    private Modular.Type type;
    private List<String> indexes;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Boolean getNameVisible() {
        return nameVisible;
    }

    public void setNameVisible(Boolean nameVisible) {
        this.nameVisible = nameVisible;
    }

    public Modular.Type getType() {
        return type;
    }

    public void setType(Modular.Type type) {
        this.type = type;
    }

	public List<String> getIndexes() {
		return indexes;
	}

	public void setIndexes(List<String> indexes) {
		this.indexes = indexes;
	}

}
