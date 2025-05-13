package com.sokol.webgame.webgame.service;

import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

@Component
public class EnemyTypeConverter implements Converter<EnemyType, String> {
    @Override
    public String convert(EnemyType source) {
        return "";
    }
}
