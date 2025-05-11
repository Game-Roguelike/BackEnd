package com.sokol.webgame.webgame.Repository;

import com.sokol.webgame.webgame.entity.Enemy;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface EnemyRepo extends JpaRepository<Enemy, Long> {
    @Query(value = "SELECT * FROM enemy WHERE type = 'Enemy' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Enemy findRandomEnemy();

    @Query(value = "SELECT * FROM enemy WHERE type = 'Boss' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Enemy findRandomBoss();
}
