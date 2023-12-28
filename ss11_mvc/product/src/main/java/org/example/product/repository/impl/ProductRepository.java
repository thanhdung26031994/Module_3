package org.example.product.repository.impl;

import org.example.product.model.Product;
import org.example.product.repository.IProductRepository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductRepository implements IProductRepository {
    private static List<Product> products = new ArrayList<>();
    static {
        products.add(new Product(1, "Bánh", 1200.0f,"Rất ngon", "Quang Ngai"));
        products.add(new Product(2, "Kem", 12200.0f,"Mềm", "Da Nang"));
        products.add(new Product(3, "Bia", 4200.0f,"Say", "Hue"));
        products.add(new Product(4, "Nuớc Ngọt", 7200.0f,"Rất ngon", "Quang Binh"));
        products.add(new Product(5, "Keo", 11200.0f,"Ngon", "Quang Nam"));
    }
    @Override
    public void add(Product product) {
        products.add(product);
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public Product findById(int id) {
        for (Product product: products){
            if (product.getId() == id){
                return product;
            }
        }
        return null;
    }

    @Override
    public void update(int id, Product product) {
        for (int i= 0; i < products.size(); i++){
            if (id == products.get(i).getId()){
                products.set(i, product);
                break;
            }
        }
    }

    @Override
    public void removePro(Product product) {
        for (Product product1: products){
            if (product1.equals(product)){
                products.remove(product);
                break;
            }
        }
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> productList = new ArrayList<>();
        for (Product product: products){
            if (product.getName().toLowerCase().contains(name.toLowerCase())){
                productList.add(product);
            }
        }
        return productList;
    }
}
