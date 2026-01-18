package com.example.dashboard.service;

import com.example.dashboard.model.Student;
import com.example.dashboard.repository.StudentRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentService {
    private final StudentRepository repo;

    public StudentService(StudentRepository repo) {
        this.repo = repo;
    }

    public List<Student> getAllStudents() {
        return repo.findAll();
    }

    public Student addStudent(Student s) {
        return repo.save(s);
    }
}
