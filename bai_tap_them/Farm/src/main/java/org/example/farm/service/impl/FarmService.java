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

    @Override
    public void updateCage(Cage cage) {
        farmRepository.updateCage(cage);
    }

    @Override
    public Cage findById(Integer idCage) {
        return farmRepository.findById(idCage);
    }

    @Override
    public void deleteById(Integer idCage) {
        farmRepository.deleteById(idCage);
    }
}
