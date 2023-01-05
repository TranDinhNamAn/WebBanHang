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
                        rs.getString(1),
                        rs.getString(2),
                        rs.getDouble(3),
                        rs.getBoolean(4),
                        rs.getInt(5),
                        rs.getInt(6)

                ));
            }
        } else {
            System.out.println("No result");
        }
        return list;
    }

    public static void deleteProduct(String id) throws SQLException {
        String sql = " delete from product where productID = "+id;
        Statement statement = DBConnect.getInstall().get();
        statement.executeUpdate(sql);
    }
}
