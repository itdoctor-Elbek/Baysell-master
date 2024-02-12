package com.example.Baysell.repository;

import com.example.Baysell.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image , Long> {
}
