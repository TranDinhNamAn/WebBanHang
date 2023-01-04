package vn.edu.hcmuaf.fit.db;

import java.sql.*;

public class DBConnect {
    String url = "jdbc:mysql://localhost:3306/xemay";
    String user = "root";
    String pass = "";
    Connection connection;
    static DBConnect install;

    private DBConnect() throws SQLException{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(url, user, pass);
        } catch (ClassNotFoundException | SQLException e) {
            throw new RuntimeException();
        }
    }

    public static DBConnect getInstall() throws  SQLException{
        if (install == null) {
            install = new DBConnect();
        }
        return install;
    }
    public Statement get(){
        if(connection==null)
            return null;
        try{
            return connection.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);
        }catch(SQLException e){
            return null;
        }
    }

    public static void main(String[] args) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        if (statement != null) {
            ResultSet rs = statement.executeQuery("select * from product ");
            rs.last();
            System.out.println(rs.getRow());
            rs.beforeFirst();
            while(rs.next()){
                System.out.println("username: "+rs.getString(1)+" "+"password: "+rs.getString(2));
            }
        }else{
            System.out.println("No result");
        }
    }
}