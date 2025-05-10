package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.SetRepo;
import com.sokol.webgame.webgame.entity.Set;
import lombok.AllArgsConstructor;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

@AllArgsConstructor
@Service
public class GameService {
    private final SetRepo setRepo;

    public List<Set> findAllSets() {
        return setRepo.findAll();
    }

    public byte[] getImages(String path) throws IOException {
        InputStream imageStream = new ClassPathResource(path).getInputStream();
        return imageStream.readAllBytes();
    }
}
