package org.example.farm.model;

public class Cage {
    private Integer idCage;
    private String typeCage;
    private Integer capacity;

    public Cage() {
    }

    public Cage(Integer idCage, String typeCage, Integer capacity) {
        this.idCage = idCage;
        this.typeCage = typeCage;
        this.capacity = capacity;
    }

    public Integer getIdCage() {
        return idCage;
    }

    public void setIdCage(Integer idCage) {
        this.idCage = idCage;
    }

    public String getTypeCage() {
        return typeCage;
    }

    public void setTypeCage(String typeCage) {
        this.typeCage = typeCage;
    }

    public Integer getCapacity() {
        return capacity;
    }

    public void setCapacity(Integer capacity) {
        this.capacity = capacity;
    }
}
