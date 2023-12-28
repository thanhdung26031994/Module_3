package org.example.customer.service;

import org.example.customer.model.Customer;

import java.util.List;

public interface CustomerService {

    List<Customer> findAll();

    void save(Customer customer);

    Customer findById(int id);

    void update(int id, Customer customer);

    void remove(int id);
}
