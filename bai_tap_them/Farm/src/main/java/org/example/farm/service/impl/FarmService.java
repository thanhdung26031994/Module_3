package org.example.farm.service.impl;

import org.example.farm.model.Cage;
import org.example.farm.repository.IFarmRepository;
import org.example.farm.repository.impl.FarmRepository;
import org.example.farm.service.IFarmService;

import java.util.List;

public class FarmService implements IFarmService {
    private static final IFarmRepository farmRepository = new FarmRepository();

    @Override
    public List<Cage> getAllCage() {
        return farmRepository.getAllCage();
    }

    @Override
    public void addCage(Cage cage) {
        farmRepository.addCage(cage);
    }
}
