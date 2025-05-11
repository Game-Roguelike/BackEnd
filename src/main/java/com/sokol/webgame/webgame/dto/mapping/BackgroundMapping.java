package com.sokol.webgame.webgame.dto.mapping;

import com.sokol.webgame.webgame.dto.BackgroundDto;
import com.sokol.webgame.webgame.entity.Background;
import org.mapstruct.Mapper;

import java.util.List;

@Mapper(componentModel = "spring")
public interface BackgroundMapping {
    BackgroundDto map(Background background);
}
