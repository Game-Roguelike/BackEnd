package com.sokol.webgame.webgame.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class GameLevelDto {
    private BackgroundDto background;
    private EnemyDto enemy;
}
