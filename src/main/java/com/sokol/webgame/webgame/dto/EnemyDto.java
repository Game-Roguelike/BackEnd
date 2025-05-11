package com.sokol.webgame.webgame.dto;

import lombok.Data;

@Data
public class EnemyDto {
    private String name;
    private String sprite;
    private Integer hp;
    private Integer power;
    private Integer xp;
    private Integer award;
    private String type;
}
