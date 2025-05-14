package com.sokol.webgame.webgame.dto.mapping;

import com.sokol.webgame.webgame.dto.EnemyDto;
import com.sokol.webgame.webgame.entity.Enemy;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface EnemyMapping {
    EnemyDto map(Enemy entity);
}
