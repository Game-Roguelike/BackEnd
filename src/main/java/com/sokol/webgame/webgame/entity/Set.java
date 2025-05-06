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
@Table(name = "set")
public class Set {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long setId;

    @Column(name = "set_name")
    private String setName;
    private String sprite;
    private Integer hp;
    private Integer stamina;
    private Integer power;

    @OneToOne
    @JoinColumn(name = "set_id")
    private Equipment equipment;

    @OneToOne
    @JoinColumn(name = "set_id")
    private Weapon weapon;

    @OneToOne
    @JoinColumn(name = "set_id")
    private ItemUsable itemUsable;

}
