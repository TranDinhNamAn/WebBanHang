package vn.edu.hcmuaf.fit.model;

public class Product {
    int id;
    String name;
    String img;
    double price;
    boolean isNew;
    int brandID;
    public Product() {
    }

    public Product(String name, String img, double price, boolean isNew,int brandID,int id) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.price = price;
        this.isNew = isNew;
        this.brandID = brandID;
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

    public int getBrandID() {
        return brandID;
    }

    public void setBrandID(int brandID) {
        this.brandID = brandID;
    }

}
