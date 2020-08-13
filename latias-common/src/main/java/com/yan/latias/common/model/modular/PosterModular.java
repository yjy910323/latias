package com.yan.latias.common.model.modular;

import java.util.ArrayList;
import java.util.List;

import com.yan.latias.common.model.modular.support.Index;

public class PosterModular extends BaseModular {

    private List<Index> indexes = new ArrayList<Index>();

    public PosterModular(String name) {
        super(name, Type.POSTER);
    }
    
    public void addIndex(Index index) {
        this.indexes.add(index);
    }

    public List<Index> getIndexes() {
        return indexes;
    }

    public void setIndexes(List<Index> indexes) {
        this.indexes = indexes;
    }

}
