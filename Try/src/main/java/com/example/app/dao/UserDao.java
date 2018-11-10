package com.example.app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.app.model.User;

public interface UserDao extends JpaRepository<User, Long> {
    User findByUsername(String username);
    
    List<User> findAll();
}
