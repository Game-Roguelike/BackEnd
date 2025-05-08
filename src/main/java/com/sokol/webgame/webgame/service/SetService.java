package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.SetRepo;
import com.sokol.webgame.webgame.entity.Set;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SetService {

    SetRepo setRepo;

    public SetService(SetRepo setRepo) {
        this.setRepo = setRepo;
    }

    public List<Set> findAll() {
        return setRepo.findAll();
    }

}
