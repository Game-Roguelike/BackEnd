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
@Table(name = "background")
public class Background {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "background_id")
    private Long backgroundId;
    private String image;
    private String gradient;
    @Column(name = "background_light")
    private String backgroundLight;
    private String room;
}
