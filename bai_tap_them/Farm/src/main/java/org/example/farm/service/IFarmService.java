package org.example.farm.service;

import org.example.farm.model.Cage;

import java.util.List;

public interface IFarmService {

    List<Cage> getAllCage();

    void addCage(Cage cage);

    void updateCage(Cage cage);

    Cage findById(Integer idCage);

    void deleteById(Integer idCage);
}
