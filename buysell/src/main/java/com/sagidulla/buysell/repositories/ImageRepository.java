package com.sagidulla.buysell.repositories;

import com.sagidulla.buysell.model.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
