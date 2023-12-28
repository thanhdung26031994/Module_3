package org.example.product.service.impl;

import org.example.product.model.Product;
import org.example.product.repository.IProductRepository;
import org.example.product.repository.impl.ProductRepository;
import org.example.product.service.IProductService;

import java.util.List;

public class ProductService implements IProductService {
    private IProductRepository productRepository = new ProductRepository();
    @Override
    public void add(Product product) {
        productRepository.add(product);
    }

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findById(int id) {
        return productRepository.findById(id);
    }

    @Override
    public void update(int id, Product product) {
        productRepository.update(id, product);
    }

    @Override
    public void removePro(Product product) {
        productRepository.removePro(product);
    }

    @Override
    public List<Product> findByName(String name) {
        return productRepository.findByName(name);
    }
}
