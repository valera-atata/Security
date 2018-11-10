package com.example.app.service;

import java.util.List;

import com.example.app.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
    
    List<User> findAll();
}
