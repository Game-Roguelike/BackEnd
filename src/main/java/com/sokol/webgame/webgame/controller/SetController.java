package com.sokol.webgame.webgame.controller;

import com.sokol.webgame.webgame.entity.Set;
import com.sokol.webgame.webgame.service.SetService;
import lombok.AllArgsConstructor;
import lombok.Builder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;


@AllArgsConstructor
@Builder
@RestController
public class SetController {
    private final SetService setService;

    @GetMapping("game/sets")
    public List<Set> findAll() {
        return setService.findAll();
    }
}
