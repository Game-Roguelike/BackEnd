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
@Table(name = "levels")
public class Levels {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "levels_id")
    private Long levelsId;
    @Column(name = "level_order")
    private Integer levelOrder;

    @OneToOne
    @JoinColumn(name = "level_id")
    private Level level;
}
