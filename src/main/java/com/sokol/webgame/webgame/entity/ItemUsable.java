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
@Table(name = "item_usable")
public class ItemUsable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "item_id")
    private Long itemID;
    private String name;
    private String sprite;
    @Column(name = "number_of_units")
    private Integer numberOfUnits;
    private Integer price;
    @OneToOne
    @JoinColumn(name = "effect_id")
    private Effect effect;
}
