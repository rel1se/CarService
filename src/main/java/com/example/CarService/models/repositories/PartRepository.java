package com.example.CarService.models.repositories;

import com.example.CarService.models.Part;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PartRepository extends JpaRepository<Part, Long> {
    List<Part> findByTitle(String title);
}
