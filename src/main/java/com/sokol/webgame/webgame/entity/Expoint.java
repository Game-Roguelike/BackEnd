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
@Table(name = "expoint")
public class Expoint {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer uniqueId;
    private Integer level;
    @Column(name = "min_xp")
    private Integer minXP;
    @Column(name = "max_xp")
    private Integer maxXP;
}
