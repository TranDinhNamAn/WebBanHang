package vn.edu.hcmuaf.fit.model;

public class Product {
    int id;
    String name;
    String img;
    long price;
    boolean isNew;
    int brandID;
    String distance;
    String gear;
    String storage;
    String fuel;

    public Product() {
    }

    public Product(int id, String name, String img, long price, boolean isNew, int brandID, String distance, String gear, String storage, String fuel) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.isNew = isNew;
        this.brandID = brandID;
        this.distance = distance;
        this.gear = gear;
        this.storage = storage;
        this.fuel = fuel;
    }

    @Override
    public String toString() {
        return "Product{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", price=" + price +
                ", isNew=" + isNew +
                ", brandID=" + brandID +
                ", distance='" + distance + '\'' +
                ", gear='" + gear + '\'' +
                ", storage='" + storage + '\'' +
                ", fuel='" + fuel + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public long getPrice() {
        return price;
    }

    public void setPrice(long price) {
        this.price = price;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public boolean isNew() {
        return isNew;
    }

    public void setNew(boolean aNew) {
        isNew = aNew;
    }

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
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
