package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class ProductServerADM {
    public static List<Product> getData() throws SQLException {
        List<Product> list = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product");
            while (rs.next()) {
                list.add(new Product(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getBoolean(5),
                        rs.getInt(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)));
            }
        } else {
            System.out.println("No result");
        }
        return list;
    }

    public static void deleteProduct(String id) throws SQLException {
        String sql = " delete from product where productID = " + id;
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);
    }

    public static Product getProduct(String id) throws SQLException {
        String sql = " select * from product where productID = " + id;
        Statement statement = DBConnect.getInstall().get();
        ResultSet rs = statement.executeQuery(sql);
        Product product = null;
        while (rs.next()) {
            product = new Product(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getDouble(4),
                    rs.getBoolean(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10));
        }
        return product;
    }

    public static void addProduct(String name, String img, String price, String isNew, String brandID) throws SQLException {
        String sql = "insert into product values('" + name + "','" + img + "'," + price + "," + isNew + ", '" + brandID + "', productID) ";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);

    }
    public static void updateProduct(String name, String img, String price, String isNew, String brandID, String pid) throws SQLException {
        String sql = "update product set name = '"+ name +"', image = '"+ img +"',price = "+
                price +",isNew = '"+ isNew +"',brandID = '"+ brandID +"'where productID = '"+ pid +"'";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);

    }

    public static void main(String[] args) throws SQLException {
        ProductServerADM ps = new ProductServerADM();
        ps.updateProduct("a","ama","10000","1","3","1");
    }
}
