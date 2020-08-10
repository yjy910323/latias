package com.yan.latias.server.controller;

import java.util.List;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.TypeReference;

public class ApiResponse {

    public static enum Status {
        SUCCESS, ERROR;
    }

    private static final String SUCCESS_CODE = "A00000";
    private static final String ERROR_CODE = "B00000";
    private String message;
    private String code;
    private Status status;
    private Object data;

    public ApiResponse() {
    }

    public ApiResponse(String message, String code, Status status, Object data) {
        this.message = message;
        this.status = status;
        this.data = data;
        this.code = code;
    }

    public static <T> T from(String json, Class<T> clazz) {
        JSONObject apiJSONObject = JSON.parseObject(json);
        T object = apiJSONObject.getObject("data", clazz);
        return object;
    }

    public static <T> List<T> fromList(String json, Class<T> clazz) {
        JSONObject apiJSONObject = JSON.parseObject(json);
        List<T> object = apiJSONObject.getObject("data", new TypeReference<List<T>>(clazz) {
        });
        return object;
    }

    public static ApiResponse success() {
        return success(null);
    }

    public static ApiResponse success(Object data) {
        return new ApiResponse("", SUCCESS_CODE, Status.SUCCESS, data);
    }

    public static ApiResponse error(String message, String code) {
        return new ApiResponse(message, code, Status.ERROR, null);
    }

    public static ApiResponse error(String message) {
        return new ApiResponse(message, ERROR_CODE, Status.ERROR, null);
    }

    public static ApiResponse error(Exception e) {
        return error(e.getMessage(), ERROR_CODE);
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
