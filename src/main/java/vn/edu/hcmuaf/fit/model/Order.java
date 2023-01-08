package vn.edu.hcmuaf.fit.model;

public class Order {
    int id;
    String user;
    String date;
    long totalPrice;

    public Order(int id, String date, String user, long totalPrice) {
        this.id = id;
        this.user = user;
        this.date = date;
        this.totalPrice = totalPrice;
    }

    public String getUser() {
        return user;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public long getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(long totalPrice) {
        this.totalPrice = totalPrice;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}
