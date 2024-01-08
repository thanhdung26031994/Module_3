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
            while (rs.next()) {
                idCage = rs.getInt("id_cage");
                typeCage = rs.getString("type_cage");
                capacity = rs.getInt("capacity");
                cageList.add(new Cage(idCage, typeCage, capacity));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
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
            statement = connection.prepareStatement("insert into cage(id_cage, type_cage, capacity) values (?,?,?);");
            statement.setInt(1, cage.getIdCage());
            statement.setString(2, cage.getTypeCage());
            statement.setInt(3, cage.getCapacity());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                statement.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            DBConnection.close();
        }
    }

    @Override
    public void updateCage(Cage cage) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("update cage set type_cage = ?, capacity = ? where id_cage = ?;");
            statement.setString(1, cage.getTypeCage());
            statement.setInt(2, cage.getCapacity());
            statement.setInt(3, cage.getIdCage());
            statement.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        } finally {
            try {
                statement.close();
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }

    @Override
    public Cage findById(Integer idCage) {
        Cage cage = null;
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("select * from cage where id_cage = ?;");
            statement.setInt(1, idCage);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Integer idCage1 = rs.getInt("idCage");
                String typeCage = rs.getString("typeCage");
                Integer capacity = rs.getInt("capacity");
                cage = new Cage(idCage1, typeCage, capacity);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return cage;
    }

    @Override
    public void deleteById(Integer idCage) {
        Connection connection = DBConnection.getConnection();
        PreparedStatement statement = null;
        try {
            statement = connection.prepareStatement("delete from cage where id_cage = ?;");
            statement.setInt(1, idCage);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
