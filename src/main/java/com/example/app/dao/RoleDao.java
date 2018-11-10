package com.example.app.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.app.model.Role;

public interface RoleDao extends JpaRepository<Role, Long> {
}
