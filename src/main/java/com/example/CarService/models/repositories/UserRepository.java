package com.example.CarService.models.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.CarService.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
