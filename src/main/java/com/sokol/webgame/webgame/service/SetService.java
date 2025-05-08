package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.SetRepo;
import com.sokol.webgame.webgame.entity.Set;
import lombok.AllArgsConstructor;
import lombok.Builder;
import org.springframework.stereotype.Service;

import java.util.List;

@AllArgsConstructor
@Builder
@Service
public class SetService {
    private final SetRepo setRepo;

    public List<Set> findAll() {
        return setRepo.findAll();
    }
}
