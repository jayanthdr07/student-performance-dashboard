package com.example.dashboard.model;

import jakarta.persistence.*;
import lombok.Data;

@Data
@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String name;
    private Integer marks1;
    private Integer marks2;
    private Float attendance;
    private Integer total;
    private Float percentage;
    private String result;
    private String grade;
    private String remark;
    private String fail_reason;
}
