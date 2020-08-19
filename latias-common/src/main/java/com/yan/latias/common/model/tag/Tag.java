package com.yan.latias.common.model.tag;

import java.util.HashMap;
import java.util.Map;

public class Tag {

    private String name;
    
    private String key;

    private Map<String, Tag> labels = new HashMap<String, Tag>();

    public Tag(String name, String key) {
        this.name = name;
        this.key = key;
    }

    public Tag() {
    }

    public void addLabel(String label) {
        this.labels.put(label, null);
    }

    public void addLabel(String label, Tag tag) {
        this.labels.put(label, tag);
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Map<String, Tag> getLabels() {
        return labels;
    }

    public void setLabels(Map<String, Tag> labels) {
        this.labels = labels;
    }

    public String getKey() {
        return key;
    }

    public void setKey(String key) {
        this.key = key;
    }
}
