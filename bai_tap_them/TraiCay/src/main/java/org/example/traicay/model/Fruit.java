package org.example.traicay.model;

import java.util.Date;

public class Fruit {
    private String id;
    private String name;
    private String unit;
    private Double price;
    private Integer idType;
    private Date date;

    public Fruit() {
    }

    public Fruit(String id, String name, String unit, Double price, Integer idType) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.price = price;
        this.idType = idType;
    }

    public Fruit(String id, String name, String unit, Double price, Integer idType, Date date) {
        this.id = id;
        this.name = name;
        this.unit = unit;
        this.price = price;
        this.idType = idType;
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

    public Integer getIdType() {
        return idType;
    }

    public void setIdType(Integer idType) {
        this.idType = idType;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }
}
