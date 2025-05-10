package com.sokol.webgame.webgame.controller;

import com.sokol.webgame.webgame.entity.Set;
import com.sokol.webgame.webgame.service.GameService;
import lombok.AllArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import java.io.IOException;
import java.util.List;

@AllArgsConstructor
@RestController
@RequestMapping("game")
public class GameController {
    private final GameService gameService;

    @GetMapping("sets")
    public List<Set> findAllSets() {
        return gameService.findAllSets();
    }

    @GetMapping(value = "img", produces = {MediaType.IMAGE_PNG_VALUE})
    public @ResponseBody byte[] getImages(@RequestParam String path) throws IOException {
        return gameService.getImages(path);
    }
}
