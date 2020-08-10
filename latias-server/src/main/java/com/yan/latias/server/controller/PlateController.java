package com.yan.latias.server.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.websocket.server.PathParam;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.yan.latias.common.model.defination.ModularDefination;
import com.yan.latias.common.model.defination.PlateDefination;
import com.yan.latias.common.model.modular.Modular;

@RestController
@CrossOrigin(origins = "*")
public class PlateController {

    @GetMapping("/plate")
    public ApiResponse all() {
        List<PlateDefination> plates = new ArrayList<PlateDefination>();
        PlateDefination p1 = new PlateDefination();
        p1.setId(1L);
        p1.setName("BI-P0推荐接口");
        PlateDefination p2 = new PlateDefination();
        p2.setId(2L);
        p2.setName("BI-P1推荐接口");
        plates.add(p1);
        plates.add(p2);
        return ApiResponse.success(plates);
    }

    @GetMapping("/plate/{plateId}")
    public ApiResponse get(@PathParam(value = "plateId") Long plateId) {
        PlateDefination plateDefination = new PlateDefination();
        plateDefination.setId(1L);
        plateDefination.setName("BI-P0推荐接口");

        List<ModularDefination> modularDefinations = new ArrayList<ModularDefination>();
        ModularDefination m1 = new ModularDefination();
        m1.setId(1L);
        m1.setName("整体情况");
        m1.setType(Modular.Type.POSTER);
        m1.setNameVisible(false);
        m1.setMetrics(Arrays.asList("QPS", "200率", "499率", "500率", "P99耗时", "P999耗时"));
        modularDefinations.add(m1);

        ModularDefination m2 = new ModularDefination();
        m2.setId(2L);
        m2.setName("各接口情况");
        m2.setType(Modular.Type.QUOTA);
        m2.setNameVisible(false);
        m2.setMetrics(Arrays.asList("QPS", "200率", "499率", "500率", "P99耗时", "P999耗时"));
        modularDefinations.add(m2);

        plateDefination.setModularDefinations(modularDefinations);
        return ApiResponse.success(plateDefination);
    }

}
