package com.sokol.webgame.webgame.service;

import org.springframework.context.annotation.Configuration;
import org.springframework.core.convert.converter.Converter;

@Configuration
public class EnemyConverter implements Converter<String, EnemyType> {

    @Override
    public EnemyType convert(String source) {
        return EnemyType.valueOf(source.toUpperCase());
    }
}