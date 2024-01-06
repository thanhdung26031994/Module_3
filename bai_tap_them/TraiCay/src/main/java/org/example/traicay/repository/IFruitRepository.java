package org.example.traicay.repository;

import org.example.traicay.model.Fruit;
import org.example.traicay.model.FruitDTO;

import java.util.List;

public interface IFruitRepository {

    List<FruitDTO> getAllFruitDTO();

    void addFruit(Fruit fruit);


    boolean updateFruit(Fruit fruit);

    Fruit getFruitById(String id);
}
