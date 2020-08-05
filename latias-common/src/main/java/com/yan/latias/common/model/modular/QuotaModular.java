package com.yan.latias.common.model.modular;

import java.util.List;

import com.yan.latias.common.model.modular.support.Index;

public class QuotaModular extends BaseModular {

    private List<Index> indexes;

    public QuotaModular(String name) {
        super(name, Type.QUOTA);
    }

    public List<Index> getIndexes() {
        return indexes;
    }

    public void setIndexes(List<Index> indexes) {
        this.indexes = indexes;
    }


}
