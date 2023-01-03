package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
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
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getBoolean(4)

                ));
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
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getBoolean(4)
                ));
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
}
