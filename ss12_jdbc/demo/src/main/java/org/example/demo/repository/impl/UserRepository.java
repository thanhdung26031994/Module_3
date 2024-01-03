package org.example.demo.repository.impl;

import org.example.demo.model.User;
import org.example.demo.repository.DBConnection;
import org.example.demo.repository.IUserRepository;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserRepository implements IUserRepository {
    private static final String SELECT_ALL_USERS = "select * from users";
    private static final String INSERT_INTO = "insert into users(id, name, email, country) values (?,?,?,?);";
    private static final String UPDATE = "update users set name = ?,email= ?, country =? where id = ?;";
    private static final String DELETE = "delete from users where id= ?;";
    private static final String SELECT_BY_COUNTRY = "select id, name, email, country from users where country = ?;";
    private static final String SORT_BY_NAME = "select id, name, email, country from users order by name;";

    @Override
    public List<User> selectAllUser() {

        List<User> users = new ArrayList<>();
        Connection connection;
        PreparedStatement preparedStatement = null;
        ResultSet resultSet = null;
        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement(SELECT_ALL_USERS);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                users.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {

                resultSet.close();
                preparedStatement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            DBConnection.close();
        }
        return users;
    }

    @Override
    public void save(User user) {
        Connection connection;
        PreparedStatement preparedStatement = null;
        try {
            connection = DBConnection.getConnection();
            preparedStatement = connection.prepareStatement(INSERT_INTO);
            preparedStatement.setInt(1, user.getId());
            preparedStatement.setString(2, user.getName());
            preparedStatement.setString(3, user.getEmail());
            preparedStatement.setString(4, user.getCountry());

            System.out.println(preparedStatement);

            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.getMessage();
        } finally {
            try {
                preparedStatement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            DBConnection.close();
        }
    }


    @Override
    public User getUserById(int id) {
        List<User> userList = selectAllUser();
        for (User user: userList){
            if (user.getId() == id){
                return user;
            }
        }
        return null;
    }

    @Override
    public boolean updateUser(User user) {
        boolean rowUpdated = false;
        Connection connection;
        PreparedStatement statement;
        try {
            connection = DBConnection.getConnection();
            statement = connection.prepareStatement(UPDATE);
            statement.setString(1, user.getName());
            statement.setString(2, user.getEmail());
            statement.setString(3, user.getCountry());
            statement.setInt(4, user.getId());

            rowUpdated = statement.executeUpdate() > 0;
        }catch (SQLException e) {
            e.printStackTrace();
        }
        return rowUpdated;
    }

    @Override
    public boolean deleteUser(int id) {
        boolean rowDeleted = false;
        Connection connection;
        PreparedStatement statement;
        try {
            connection = DBConnection.getConnection();
            statement = connection.prepareStatement(DELETE);
            statement.setInt(1, id);
            rowDeleted = statement.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rowDeleted;
    }

    @Override
    public List<User> seleteUserByCountry(String country) {
        List<User> userList = new ArrayList<>();
        Connection connection;
        PreparedStatement statement;
        try {
            connection = DBConnection.getConnection();
            statement = connection.prepareStatement(SELECT_BY_COUNTRY);
            statement.setString(1, country);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country1 = resultSet.getString("country");
                userList.add(new User(id, name, email, country1));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

    @Override
    public List<User> sortByName() {
        List<User> userList = new ArrayList<>();
        Connection connection;
        PreparedStatement statement;
        try {
            connection = DBConnection.getConnection();
            statement = connection.prepareStatement(SORT_BY_NAME);
            ResultSet resultSet = statement.executeQuery();
            while (resultSet.next()){
                int id = resultSet.getInt("id");
                String name = resultSet.getString("name");
                String email = resultSet.getString("email");
                String country = resultSet.getString("country");
                userList.add(new User(id, name, email, country));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return userList;
    }

}
