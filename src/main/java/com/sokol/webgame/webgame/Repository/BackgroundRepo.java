package com.sokol.webgame.webgame.Repository;

import com.sokol.webgame.webgame.entity.Background;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface BackgroundRepo extends JpaRepository<Background, Integer> {
    @Query(value = "SELECT * FROM background ORDER BY RANDOM() LIMIT 1", nativeQuery = true)
    Background findRandomBack();
}
