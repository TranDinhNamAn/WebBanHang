package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.*;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

public class ProductService {
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

    public static List<Product> getProduct() throws SQLException {
        List<Product> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product");
            while (rs.next()) {
                list1.add(new Product(
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
        return list1;
    }

    public static List<Product> getListByPage(List<Product> arr, int start, int end) {
        List<Product> list = new ArrayList<>();
        for (int i = start; i < end; i++) {
            list.add(arr.get(i));
        }
        return list;
    }
    public static List<Product> getListProductByCategory(String san_pham) throws SQLException {
        List<Product> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product inner join brand on product.brandID = brand.brandID where brand.brandID = '"+ san_pham + "'");

            while (rs.next()) {
                list1.add(new Product(
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
        return list1;
    }
    public static List<Brand> getListBrand() throws SQLException {
        List<Brand> list1 = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from brand");

            while (rs.next()) {
                list1.add(new Brand(
                        rs.getInt(1),
                        rs.getString(2)
                ));
            }
        } else {
            System.out.println("No result");
        }
        return list1;
    }
    public static Product getDetail(String id) throws SQLException {
        String sql = " select * from product  where productID = "+id;
        Statement statement = DBConnect.getInstall().get();
        ResultSet rs = statement.executeQuery(sql);
        Product product=null;
        while(rs.next()){
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
    public static int getByBrandID(String id) throws SQLException {
        String sql = " select brandID from product  where productID = " + id;
        Statement statement = DBConnect.getInstall().get();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            return rs.getInt(1);
        }
        return 0;
    }
    public static void addOrder(String id, String date,String user,String totalMoney) throws SQLException {
            String sql1 = "insert into orders values("+id+",'"+date+ "','"+user+ "', "+totalMoney+" ) ";
            Statement statement1 = DBConnect.getInstall().get();
            statement1.executeUpdate(sql1);
    }
    public static void addOrderDetail(String id, String username,String name,String image,String price,String quantity) throws SQLException {
        String sql = "insert into orderdetail values("+id+",'"+username+"','"+name+"','"+image+"',"+price+","+quantity+")";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);
    }
    public static void deleteCart(String user) throws SQLException {
        String sql = "delete from cart where user='"+user+"'";
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);
    }
    public static List<Order> getOrderListByUser(String username) throws SQLException {
        String sql = "select * from orders where user='"+username+"'";
        Statement statement = DBConnect.getInstall().get();
        List<Order> list = new ArrayList<>();
            ResultSet rs = statement.executeQuery(sql);
            while (rs.next()) {
                list.add(new Order(
                        rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getLong(4)
                ));
            }
        return list;
    }
    public static List<OrderDetail> getOrderDetailByUser(String id) throws SQLException {
        String sql = "select * from orderdetail where id="+id;
        Statement statement = DBConnect.getInstall().get();
        List<OrderDetail> list = new ArrayList<>();
        ResultSet rs = statement.executeQuery(sql);
        while (rs.next()) {
            list.add(new OrderDetail(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getLong(5),
                    rs.getInt(6)
            ));
        }
        return list;
    }

    public static void main(String[] args) throws SQLException {
        System.out.println( ProductService.getOrderDetailByUser("889"));
    }
}
