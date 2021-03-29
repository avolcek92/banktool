package com.bank.exercise.banktool;

import com.bank.exercise.banktool.entity.enums.Age;
import com.bank.exercise.banktool.entity.enums.Income;
import lombok.Data;

@Data
public class CustomerAnswer {
    private Boolean isStudent;
    private Income income;
    private Age age;

}
