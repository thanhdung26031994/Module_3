package org.example.farm.model;

public class Pig {
    private Integer id;
    private String name;
    private Float weight;
    private Integer age;
    private String gender;
    private Integer idCage1;

    public Pig() {
    }

    public Pig(Integer id, String name, Float weight, Integer age, String gender, Integer idCage1) {
        this.id = id;
        this.name = name;
        this.weight = weight;
        this.age = age;
        this.gender = gender;
        this.idCage1 = idCage1;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Float getWeight() {
        return weight;
    }

    public void setWeight(Float weight) {
        this.weight = weight;
    }

    public Integer getAge() {
        return age;
    }

    public void setAge(Integer age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Integer getIdCage1() {
        return idCage1;
    }

    public void setIdCage1(Integer idCage1) {
        this.idCage1 = idCage1;
    }
}
