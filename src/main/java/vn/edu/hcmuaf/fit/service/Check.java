package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Account;

import java.sql.*;

public class Check {
    public static Account CheckLogin(String username, String password) throws SQLException, ClassNotFoundException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "select*from user where username = '"+username+ "' and password= '"+password+"'";
        ResultSet rs = statement.executeQuery(sql);
        Account acc = null;
        while (rs.next()) {
            acc = new Account(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getInt(5));
        }
        return acc;
    }
    public static Account CheckSignup(String email, String username) throws SQLException, ClassNotFoundException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "select*from user where email = '"+email+ "'or username = '"+username+ "'";
        ResultSet rs = statement.executeQuery(sql);
        Account acc = null;
        while (rs.next()) {
            acc = new Account(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getInt(5));
        }
        return acc;
    }
    public static Account CheckEmail(String email) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "select*from user where email = '"+email+ "'";
        ResultSet rs = statement.executeQuery(sql);
        Account acc = null;
        while (rs.next()) {
            acc = new Account(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getInt(5));
        }
        return acc;
    }
    public static void Reset(String email, String password) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "update user set password = '"+password+"' where email = '"+ email +"'";
        statement.executeUpdate(sql);
    }
    public static void Change(String username, String password) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "update user set password = '"+password+"' where username = '"+ username +"'";
        statement.executeUpdate(sql);
    }

    public static void SignUp(String email, String username, String password) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "insert into user values (id,'"+email+"','"+username+"','"+password+"',0)";
        int rs = statement.executeUpdate(sql);
    }

    public static void main(String[] args) throws SQLException, ClassNotFoundException {
        System.out.println(Check.CheckLogin("naman124","124"));
    }
}

