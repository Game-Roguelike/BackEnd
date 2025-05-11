package com.sokol.webgame.webgame.controller;

import com.sokol.webgame.webgame.dto.EnemyBackgroundDto;
import com.sokol.webgame.webgame.dto.LevelsDto;
import com.sokol.webgame.webgame.entity.Enemy;
import com.sokol.webgame.webgame.entity.Set;
import com.sokol.webgame.webgame.service.GameService;
import lombok.AllArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@AllArgsConstructor
@RestController
@RequestMapping("/game")
public class GameController {
    private final GameService gameService;

    @GetMapping("/sets")
    public List<Set> findAllSets() {
        return gameService.findAllSets();
    }

    @GetMapping(value = "/image", produces = {MediaType.IMAGE_PNG_VALUE})
    public @ResponseBody byte[] getImages(@RequestParam String path) {
        return gameService.getImage(path);
    }

    @GetMapping("/levels")
    public List<LevelsDto> getLevels() {
        return gameService.getLevels();
    }

    @GetMapping("/level")
    public EnemyBackgroundDto getLevel(@RequestParam Enemy type){
        return gameService.getLevel(type);
    }
}
