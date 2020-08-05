package com.yan.latias.common.model.modular;

import java.util.List;

import com.yan.latias.common.model.modular.support.Index;

public class PosterModular extends BaseModular {

    private List<Index> indexes;

    public PosterModular(String name) {
        super(name, Type.POSTER);
    }

    public List<Index> getIndexes() {
        return indexes;
    }

    public void setIndexes(List<Index> indexes) {
        this.indexes = indexes;
    }

}
