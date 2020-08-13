package com.yan.latias.server.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.yan.latias.common.model.modular.PosterModular;
import com.yan.latias.common.model.modular.QuotaModular;
import com.yan.latias.common.model.modular.support.Figure;
import com.yan.latias.common.model.modular.support.Index;
import com.yan.latias.common.model.modular.support.Metric;

@RestController
@CrossOrigin(origins = "*")
public class ModularController {

    @GetMapping("/modular/{modularId}")
    public ApiResponse get(@PathVariable(value = "modularId") Long modularId) {

        if (modularId == 1L) {
            Index index = new Index("半播页-猜你喜欢");
            index.addMetric(new Metric("QPS", new Figure(10000), new Figure(9501)));
            index.addMetric(new Metric("200率", new Figure(98.1), new Figure(99.5)));

            QuotaModular modular = new QuotaModular("明细列表");
            modular.addIndex(index);
            return ApiResponse.success(modular);
        } else {
            Index index = new Index("半播页-猜你喜欢");
            index.addMetric(new Metric("QPS", new Figure(10000), new Figure(9501)));
            index.addMetric(new Metric("200率", new Figure(98.1), new Figure(99.5)));

            PosterModular modular = new PosterModular("总指标");
            modular.addIndex(index);

            return ApiResponse.success(modular);
        }

    }

}
