package com.sokol.webgame.webgame.dto.mapping;

import com.sokol.webgame.webgame.dto.LevelsDto;
import com.sokol.webgame.webgame.entity.Levels;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = "spring")
public interface LevelsMapping {
    @Mapping(target = "type", source = "level.type")
    @Mapping(target = "sprite", source = "level.sprite")
    LevelsDto map(Levels levels);
}
