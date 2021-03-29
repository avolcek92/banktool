package com.bank.exercise.banktool;

import com.bank.exercise.banktool.repository.ProductRepository;

import com.bank.exercise.banktool.entity.db.Product;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;


@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public List<String> getProductByRule(CustomerAnswer customerAnswer) {
        List<Product> productList = productRepository.findAll();
        List<String> recommendedProductList = new ArrayList<>();

        for (Product product : productList) {
            if (customerAnswer.getIsStudent() == product.getRule().getIsStudent() &&
                    customerAnswer.getIncome() == product.getRule().getIncome() &&
                    customerAnswer.getAge() == product.getRule().getAge()) {
                recommendedProductList.add(product.getProductName());
            }
        }
        System.out.println(productList.toString());
        System.out.println(recommendedProductList.toString());
        return recommendedProductList;

    }
}
