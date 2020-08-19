package com.yan.latias.common.model.modular;

import java.util.List;

import com.yan.latias.common.model.modular.support.Metric;
import com.yan.latias.common.model.tag.TagGroup;

public class QuotaDetail {

    private String name;
    private List<Metric> metrics;
    private TagGroup tagGroup;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public List<Metric> getMetrics() {
        return metrics;
    }

    public void setMetrics(List<Metric> metrics) {
        this.metrics = metrics;
    }

    public TagGroup getTagGroup() {
        return tagGroup;
    }

    public void setTagGroup(TagGroup tagGroup) {
        this.tagGroup = tagGroup;
    }

}
