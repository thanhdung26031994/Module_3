package org.example.demo.repository;

import org.example.demo.model.User;

import java.sql.SQLException;
import java.util.List;

public interface IUserRepository {

    List<User> selectAllUser();

    void save(User user);

    User getUserById(int id);

    boolean updateUser(User user);

    boolean deleteUser(int id);

    List<User> seleteUserByCountry(String country);
}
