package vn.edu.hcmuaf.fit.model;

public class ProductDetail {
    int id;
    String image;
    double price;
    String name;
    String distance;
    String gear;
    String storage;
    String fuel;

    public ProductDetail(int id, String image, double price, String name, String distance, String gear, String storage, String fuel) {
        this.id = id;
        this.image = image;
        this.price = price;
        this.name = name;
        this.distance = distance;
        this.gear = gear;
        this.storage = storage;
        this.fuel = fuel;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDistance() {
        return distance;
    }

    public void setDistance(String distance) {
        this.distance = distance;
    }

    public String getGear() {
        return gear;
    }

    public void setGear(String gear) {
        this.gear = gear;
    }

    public String getStorage() {
        return storage;
    }

    public void setStorage(String storage) {
        this.storage = storage;
    }

    public String getFuel() {
        return fuel;
    }

    public void setFuel(String fuel) {
        this.fuel = fuel;
    }
}