package com.feilign.aiagentcoder.common.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Response<T> {
    private Integer code;
    private String message;
    private T data;
    private Long timestamp;

    public static <T> Response<T> success(T data) {
        return Response.<T>builder()
                .code(0)
                .message("success")
                .data(data)
                .timestamp(System.currentTimeMillis())
                .build();
    }

    public static <T> Response<T> success(String message, T data) {
        return Response.<T>builder()
                .code(0)
                .message(message)
                .data(data)
                .timestamp(System.currentTimeMillis())
                .build();
    }

    public static <T> Response<T> fail(Integer code, String message) {
        return Response.<T>builder()
                .code(code)
                .message(message)
                .timestamp(System.currentTimeMillis())
                .build();
    }

    public static <T> Response<T> fail(String message) {
        return fail(1, message);
    }
}