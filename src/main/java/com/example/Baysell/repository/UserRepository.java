package com.example.Baysell.repository;

import com.example.Baysell.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User ,  Long> {
    User findByEmail(String email);
}
