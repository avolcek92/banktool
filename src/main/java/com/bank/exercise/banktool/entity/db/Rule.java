package com.bank.exercise.banktool.entity.db;

import com.bank.exercise.banktool.entity.enums.Age;
import com.bank.exercise.banktool.entity.enums.Income;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Rule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private Boolean isStudent;
    private Income income;
    private Age age;
}
