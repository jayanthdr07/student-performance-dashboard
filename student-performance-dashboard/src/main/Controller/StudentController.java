package com.example.dashboard.controller;

import com.example.dashboard.model.Student;
import com.example.dashboard.service.StudentService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/students")
@CrossOrigin // allow frontend JS requests
public class StudentController {
    private final StudentService service;

    public StudentController(StudentService service) {
        this.service = service;
    }

    @GetMapping
    public List<Student> getStudents() {
        return service.getAllStudents();
    }

    @PostMapping
    public Student addStudent(@RequestBody Student student) {
        return service.addStudent(student);
    }
}
