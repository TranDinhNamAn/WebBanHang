package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Product;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CheckLogin {
    public static Account Check(String username, String password) throws SQLException, ClassNotFoundException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "select*from user where username = '"+username+ "' and password= '"+password+"'";
        ResultSet rs = statement.executeQuery(sql);
        Account acc = null;
        while (rs.next()) {
            acc = new Account(
                    rs.getString(1),
                    rs.getString(2));
        }
        return acc;
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(CheckLogin.Check("naman123","124"));
    }
}

