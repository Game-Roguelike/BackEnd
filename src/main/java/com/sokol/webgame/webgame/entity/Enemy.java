package com.sokol.webgame.webgame.entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Entity
@Table(name = "enemy")
public class Enemy {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "enemy_id")
    private Long enemyId;

    private String name;
    private String sprite;
    private Integer hp;
    private Integer power;
    private Integer xp;
    private Integer award;
    private String type;

}
