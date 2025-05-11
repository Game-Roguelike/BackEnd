package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.LevelsRepo;
import com.sokol.webgame.webgame.Repository.SetRepo;
import com.sokol.webgame.webgame.dto.LevelsDto;
import com.sokol.webgame.webgame.dto.mapping.LevelsMapping;
import com.sokol.webgame.webgame.entity.Set;
import lombok.AllArgsConstructor;
import lombok.SneakyThrows;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.util.List;

@AllArgsConstructor
@Service

public class GameService {
    private final SetRepo setRepo;
    private final LevelsRepo levelsRepo;
    private final LevelsMapping levelsMapping;


    public List<Set> findAllSets() {
        return setRepo.findAll();
    }

    @SneakyThrows
    public byte[] getImage(String path) {
        return new ClassPathResource(path)
                .getInputStream()
                .readAllBytes();
    }

    public List<LevelsDto> getLevels() {
        return levelsRepo.findAll().stream()
                .map(levelsMapping::map)
                .toList();
    }
}
