package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.SetRepo;
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

    public List<Set> findAllSets() {
        return setRepo.findAll();
    }

    @SneakyThrows
    public byte[] getImage(String path) {
        return new ClassPathResource(path)
                .getInputStream()
                .readAllBytes();
    }
}
