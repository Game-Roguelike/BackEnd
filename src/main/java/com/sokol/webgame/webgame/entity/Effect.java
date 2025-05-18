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
@Table(name = "effect")
public class Effect {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "effect_id")
    private Long effectId;
    private String name;
    private String type;
    private Integer hp;
    private Integer power;
    private Integer stamina;
    private Float damage;
    @Column(name = "incoming_damage")
    private Float incomingDamage;
}
