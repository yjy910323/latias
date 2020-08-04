package com.yan.latias.common.model.modular.support;

import java.util.HashMap;
import java.util.Map;

public class Index {

	private String name;

	private Map<String, Metric> metrics = new HashMap<String, Metric>();

	public Index(String name) {
		this.name = name;
	}

	public void addMetric(Metric metric) {
		this.metrics.put(metric.getName(), metric);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Map<String, Metric> getMetrics() {
		return metrics;
	}

	public void setMetrics(Map<String, Metric> metrics) {
		this.metrics = metrics;
	}

}
