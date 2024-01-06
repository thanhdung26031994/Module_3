package org.example.traicay.repository.impl;

import org.example.traicay.data.DBConnection;
import org.example.traicay.model.Fruit;
import org.example.traicay.model.FruitDTO;
import org.example.traicay.repository.IFruitRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class FruitRepository implements IFruitRepository {

    @Override
    public List<FruitDTO> getAllFruitDTO() {
        List<FruitDTO> fruits = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        String id;
        String name;
        String unit;
        Double price;
        String nameCommodity;
        Date date;
        try {
            statement = connection.prepareStatement("CALL call_hang_hoa();");
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                id = rs.getString("ma_hh");
                name = rs.getString("ten_hh");
                unit = rs.getString("do_vi_tinh");
                price = rs.getDouble("gia");
                nameCommodity = rs.getString("ten_loai");
                date = rs.getDate("ngay_thu_hoach");
                fruits.add(new FruitDTO(id, name, unit, price, nameCommodity, date));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return fruits;
    }

    @Override
    public void addFruit(Fruit fruit) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("insert into " +
                    "hang_hoa (ma_hh, ten_hh, do_vi_tinh, gia, ma_loai) values (?,?,?,?,?);");
            statement.setString(1, fruit.getId());
            statement.setString(2, fruit.getName());
            statement.setString(3, fruit.getUnit());
            statement.setDouble(4, fruit.getPrice());
            statement.setInt(5, fruit.getIdType());
//            statement.setDate(6, fruit.getDate());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public boolean updateFruit(Fruit fruit) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("update hang_hoa " +
                    "set  ten_hh = ?, do_vi_tinh = ?, gia = ?, ma_loai = ? where ma_hh = ?;");
            statement.setString(1, fruit.getName());
            statement.setString(2, fruit.getUnit());
            statement.setDouble(3, fruit.getPrice());
            statement.setInt(4, fruit.getIdType());
            statement.setString(5, fruit.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }

    @Override
    public Fruit getFruitById(String id) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        Fruit fruit = null;
        try {
            statement = connection.prepareStatement("select (ma_hh, ten_hh, do_vi_tinh, gia, ma_loai) " +
                    "from hang_hoa where ma_hh = ?;");
            statement.setString(1, id);
            ResultSet rs = statement.executeQuery();
            String name;
            String unit;
            Double price;
            Integer idType;
            while (rs.next()){
                name = rs.getString("name");
                unit = rs.getString("unit");
                price = rs.getDouble("price");
                idType = rs.getInt("idType");
                fruit = new Fruit(id, name, unit, price, idType);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return fruit;
    }

}
