package org.example.traicay.service.impl;

import org.example.traicay.model.Fruit;
import org.example.traicay.model.FruitDTO;
import org.example.traicay.repository.IFruitRepository;
import org.example.traicay.repository.impl.FruitRepository;
import org.example.traicay.service.IFruitService;

import java.util.List;

public class FruitService implements IFruitService {
    private static IFruitRepository fruitRepository = new FruitRepository();

    @Override
    public List<FruitDTO> getAllFruitDTO() {
        return fruitRepository.getAllFruitDTO();
    }

    @Override
    public void addFruit(Fruit fruit) {
        fruitRepository.addFruit(fruit);
    }

    @Override
    public boolean updateFruit(Fruit fruit) {
        return fruitRepository.updateFruit(fruit);
    }

    @Override
    public Fruit getFruitById(String id) {
        return fruitRepository.getFruitById(id);
    }


}
