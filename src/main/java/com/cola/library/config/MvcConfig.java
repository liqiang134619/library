package com.cola.library.config;

import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


/**
 * @author Liq
 * @date 2020/8/11
 */
public class MvcConfig implements WebMvcConfigurer {

    private static final String DATETIME_FORMAT = "yyyy-MM-dd HH:mm:ss";

    /**
     * springboot mvc 使用localdatetime入参处理
     * ref: https://blog.csdn.net/u012627861/article/details/90756612?
     * @param registry 格式化注册器
     */
    @Override
    public void addFormatters(FormatterRegistry registry) {
        registry.addConverter(new LocalDateTimeConverter());
    }



    public static class LocalDateTimeConverter implements Converter<String, LocalDateTime> {
        @Override
        public LocalDateTime convert(String source) {
            if (StringUtils.isEmpty(source)) {
                return null;
            }
            return LocalDateTime.parse(source, DateTimeFormatter.ofPattern(DATETIME_FORMAT));
        }
    }

}
