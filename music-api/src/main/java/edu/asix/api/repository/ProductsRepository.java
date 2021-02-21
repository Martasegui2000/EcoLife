package edu.asix.api.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.asix.api.entity.Product;

public interface ProductsRepository extends JpaRepository<Product, Integer> {

}
