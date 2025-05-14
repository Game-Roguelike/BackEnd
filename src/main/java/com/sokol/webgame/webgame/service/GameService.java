package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.BackgroundRepo;
import com.sokol.webgame.webgame.Repository.EnemyRepo;
import com.sokol.webgame.webgame.Repository.LevelsRepo;
import com.sokol.webgame.webgame.Repository.SetRepo;
import com.sokol.webgame.webgame.dto.GameLevelDto;
import com.sokol.webgame.webgame.dto.LevelsDto;
import com.sokol.webgame.webgame.dto.mapping.BackgroundMapping;
import com.sokol.webgame.webgame.dto.mapping.EnemyMapping;
import com.sokol.webgame.webgame.dto.mapping.LevelsMapping;
import com.sokol.webgame.webgame.entity.Background;
import com.sokol.webgame.webgame.entity.Enemy;
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
    private final BackgroundRepo backgroundRepo;
    private final EnemyRepo enemyRepo;
    private final EnemyMapping enemyMapping;
    private final BackgroundMapping backgroundMapping;


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

    public GameLevelDto getLevel(EnemyType type) {
        Background randomBackground = backgroundRepo.findRandomBack();
        Enemy randomEnemy = null;

        switch (type) {
            case NORMAL -> randomEnemy = enemyRepo.findRandomEnemy();
            case BOSS -> randomEnemy = enemyRepo.findRandomBoss();
        }

        return GameLevelDto.builder()
                .background(backgroundMapping.map(randomBackground))
                .enemy(enemyMapping.map(randomEnemy))
                .build();
    }
}
