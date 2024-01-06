package org.example.traicay.model;

import java.util.Date;

public class FruitDTO {
    private String id;
    private String name;
    private String unit;
    private Double price;
    private String nameCommodity;
    private Date date;

    public FruitDTO() {
    }

    public FruitDTO(String id, String name, String unit, Double price, String nameCommodity, Date date) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.price = price;
        this.nameCommodity = nameCommodity;
        this.date = date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getNameCommodity() {
        return nameCommodity;
    }

    public void setNameCommodity(String nameCommodity) {
        this.nameCommodity = nameCommodity;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
