package org.example.farm.repository.impl;

import org.example.farm.data.DBConnection;
import org.example.farm.model.Cage;
import org.example.farm.repository.IFarmRepository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class FarmRepository implements IFarmRepository {
    @Override
    public List<Cage> getAllCage() {
        List<Cage> cageList = new ArrayList<>();
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        Integer idCage;
        String typeCage;
        Integer capacity;
        try {
            statement = connection.prepareStatement("select * from cage");
            ResultSet rs = statement.executeQuery();
            while (rs.next()){
                idCage = rs.getInt("id_cage");
                typeCage = rs.getString("type_cage");
                capacity = rs.getInt("capacity");
                cageList.add(new Cage(idCage, typeCage, capacity));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }finally {
            try {
                statement.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            DBConnection.close();
        }
        return cageList;
    }

    @Override
    public void addCage(Cage cage) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("insert into cage values (?,?,?);");
            
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
