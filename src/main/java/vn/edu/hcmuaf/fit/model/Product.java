package vn.edu.hcmuaf.fit.model;

public class Product {
    int id;
    String name;
    String img;
    double price;
    boolean isNew;
    public Product() {
    }

    public Product(String name, String img, double price, boolean isNew) {
        this.name = name;
        this.img = img;
        this.price = price;
        this.isNew = isNew;
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

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
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
}
