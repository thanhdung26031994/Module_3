package org.example.product.service;

import org.example.product.model.Product;

import java.util.List;

public interface IProductService {
    void add(Product product);

    List<Product> findAll();

    Product findById(int id);

    void update(int id, Product product);


    void removePro(Product product);

    List<Product> findByName(String name);
}
