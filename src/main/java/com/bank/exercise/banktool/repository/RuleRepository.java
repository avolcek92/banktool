package com.bank.exercise.banktool.repository;

import com.bank.exercise.banktool.entity.db.Rule;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RuleRepository extends JpaRepository<Rule, Long> {
}
