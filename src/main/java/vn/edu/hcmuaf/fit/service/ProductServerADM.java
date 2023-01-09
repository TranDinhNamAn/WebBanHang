package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
                        rs.getLong(4),
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

    public static void deleteUser(String id) throws SQLException {
        String sql = " delete from user where id = " + id;
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
                    rs.getLong(4),
                    rs.getBoolean(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10));
        }
        return product;
    }

    public static void addProduct(String name, String img, String price, String isNew, String brandID, String distance, String gear, String storage, String fuel) throws SQLException {
        String sql = "insert into product values(productID,'" + name + "','" + img + "'," + price + "," + isNew + ", " + brandID + "," + distance + ",'" + gear + "'," + storage + "," + fuel + ")";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);

    }

    public static void updateProduct(String pid, String name, String img, String price, String isNew, String brandID, String distance, String gear, String storage, String fuel) throws SQLException {
        String sql = "update product set name = '" + name + "', image = '" + img + "',price = " +
                price + ",isNew = '" + isNew + "',brandID = '" + brandID + "',distance = " + distance + ",gear = '" + gear + "',storage = " + storage + ",fuel = " + fuel + " where productID = '" + pid + "'";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);

    }

    public static int count(String search) throws SQLException {
        String sql = "select count(*) from product where name  like '" + search + "'";
        Statement statement = DBConnect.getInstall().get();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            return rs.getInt(1);
        }
        return 0;
    }

    public static List<Product> searchByName(String txtSearch) throws SQLException {
        List<Product> list = new ArrayList<>();
        String sql = "select * from product where name like '%" + txtSearch + "%'";
        Statement statement = DBConnect.getInstall().get();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            list.add(new Product(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getLong(4),
                    rs.getBoolean(5),
                    rs.getInt(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getString(9),
                    rs.getString(10)));
        }
        return list;
    }

    public static List<Account> getAllAcount() throws SQLException {
        List<Account> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from user");

            while (rs.next()) {
                list1.add(new Account(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;

    }

    public static List<Order> getAllOrderList() throws SQLException {
        String sql = "select * from orders";
        Statement statement = DBConnect.getInstall().get();
        List<Order> list1 = new ArrayList<>();
        if (statement != null) {
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                list1.add(new Order(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }
    public static List<OrderDetail> getAllOrderDetail(String id) throws SQLException {
        String sql = "SELECT orderdetail.* FROM orderdetail INNER JOIN orders on orderdetail.id = orders.id where orders.id = "+ id;
        Statement statement = DBConnect.getInstall().get();
        List<OrderDetail> list1 = new ArrayList<>();
        if (statement != null) {
            ResultSet rs = statement.executeQuery(sql);

            while (rs.next()) {
                list1.add(new OrderDetail(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getLong(5),
                        rs.getInt(6)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }

    public static List<Blog> getAllBlog() throws SQLException {
        String sql = "SELECT * from blog";
        Statement statement = DBConnect.getInstall().get();
        List<Blog> list1 = new ArrayList<>();
        if (statement != null) {
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                list1.add(new Blog(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)

                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }
    public static Blog getBlog(String id) throws SQLException {
        String sql = "SELECT * from blog where id = " + id;
        Statement statement = DBConnect.getInstall().get();
        Blog b = null;
        if (statement != null) {
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
               b = new Blog(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getString(7),
                        rs.getString(8),
                        rs.getString(9),
                        rs.getString(10)

                );
            }
        } else {
            System.out.println("No result");
        }
        return b;
    }
    public static void deleteBlog(String id) throws SQLException {
        String sql = " delete from blog where id = " + id;
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);
    }
    public static void updateBlog(String id, String img, String date, String user, String name, String content, String title1, String content1, String title2, String content2) throws SQLException {
        String sql = "update blog set image ='" + img + "',date ='" + date + "',user ='" + user + "',nameblog ='" + name + "',content ='" + content + "',title1 ='" + title1 + "',content1 ='" + content1 + "',title2 ='" + title2 + "',content2 ='" + content2 + "' where id = '" + id + "'";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);

    }

    public static void main(String[] args) throws SQLException {
        ProductServerADM ps = new ProductServerADM();
    }
}
