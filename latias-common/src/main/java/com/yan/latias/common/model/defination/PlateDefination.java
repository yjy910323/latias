package com.yan.latias.common.model.defination;

import java.util.List;

public class PlateDefination {

    private Long id;
    private String name;
    private List<ModularDefination> modularDefinations;

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

    public List<ModularDefination> getModularDefinations() {
        return modularDefinations;
    }

    public void setModularDefinations(List<ModularDefination> modularDefinations) {
        this.modularDefinations = modularDefinations;
    }

}
