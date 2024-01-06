package org.example.farm.repository;

import org.example.farm.model.Cage;

import java.util.List;

public interface IFarmRepository {
    List<Cage> getAllCage();

    void addCage(Cage cage);
}
