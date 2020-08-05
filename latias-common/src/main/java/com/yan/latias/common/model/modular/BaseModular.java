package com.yan.latias.common.model.modular;

public class BaseModular implements Modular {

    private String name;
    private Modular.Type type;

    public BaseModular(String name, Type type) {
        super();
        this.name = name;
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Modular.Type getType() {
        return type;
    }

    public void setType(Modular.Type type) {
        this.type = type;
    }

}
