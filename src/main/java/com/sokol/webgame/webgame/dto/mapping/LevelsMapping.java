package com.sokol.webgame.webgame.dto.mapping;

import com.sokol.webgame.webgame.dto.LevelsDto;
import com.sokol.webgame.webgame.entity.Levels;
import org.mapstruct.Mapper;

@Mapper(componentModel = "spring")
public interface LevelsMapping {
    LevelsDto map(Levels levels);
}
