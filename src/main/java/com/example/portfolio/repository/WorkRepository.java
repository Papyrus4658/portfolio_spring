package com.example.portfolio.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.portfolio.model.Work;

public interface WorkRepository extends JpaRepository<Work, Long> {
}
