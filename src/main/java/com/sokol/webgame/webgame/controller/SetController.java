package com.sokol.webgame.webgame.controller;

import com.sokol.webgame.webgame.entity.Set;
import com.sokol.webgame.webgame.service.SetService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class SetController {

    SetService setService;

    public SetController(SetService setService) {
        this.setService = setService;
    }

    @GetMapping("set")
    public List<Set> findAll(){
        return setService.findAll();
    }

}
