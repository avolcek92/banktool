package com.bank.exercise.banktool.repository;

import com.bank.exercise.banktool.entity.db.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductRepository extends JpaRepository<Product, Long> {
}
