package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CheckLogin {
    public static Account Check(String username, String password) throws SQLException, ClassNotFoundException {
        List<Account> accList = new ArrayList<>();
        String url = "jdbc:mysql://localhost:8111/xemay";
        String user = "root";
        String pass = "";
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection connection = DriverManager.getConnection(url, user, pass);
        String sql = "select*from user where username = ? and password= ?";
        PreparedStatement ps = connection.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, password);
        ResultSet rs = ps.executeQuery();
        Account acc = null;
        while (rs.next()) {
            acc = new Account(
                    rs.getString(1),
                    rs.getString(2));
        }
        return acc;
    }
}

