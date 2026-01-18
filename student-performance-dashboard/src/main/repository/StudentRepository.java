package com.example.dashboard.repository;

import com.example.dashboard.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Integer> {}
