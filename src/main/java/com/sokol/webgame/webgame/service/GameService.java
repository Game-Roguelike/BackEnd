package com.sokol.webgame.webgame.service;

import com.sokol.webgame.webgame.Repository.BackgroundRepo;
import com.sokol.webgame.webgame.Repository.EnemyRepo;
import com.sokol.webgame.webgame.Repository.LevelsRepo;
import com.sokol.webgame.webgame.Repository.SetRepo;
import com.sokol.webgame.webgame.dto.EnemyBackgroundDto;
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

    public EnemyBackgroundDto getLevel(Enemy type) {
        Background randomBackground = backgroundRepo.findRandomBack(); // Рандомний фон
        Enemy randomEnemy;

        if (type.getType().equalsIgnoreCase("Enemy")) {
            randomEnemy = enemyRepo.findRandomEnemy(); // Рандомний ворог
        } else {
            randomEnemy = enemyRepo.findRandomBoss();  // Рандомний бос
        }

        EnemyBackgroundDto result = new EnemyBackgroundDto();

        result.setBackgrounds(backgroundMapping.map(randomBackground));
        result.setEnemies(enemyMapping.map(randomEnemy));

        return result;
    }
}
