package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Cart;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

public class CartServices {
    public static List<Cart> View(String user) throws SQLException {
       List<Cart> list = new LinkedList<>();
        Statement statement = DBConnect.getInstall().get();
        String sql = "Select * from cart where user ='"+user+"'";
        ResultSet rs = statement.executeQuery(sql);
        while(rs.next()){
            list.add(new Cart(
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
    public static Cart ViewItem(String user, String id) throws SQLException {
        Cart c = null;
        Statement statement = DBConnect.getInstall().get();
        String sql = "Select * from cart where user ='"+user+"' and id="+id;
        ResultSet rs = statement.executeQuery(sql);
        while(rs.next()){
            c=new Cart(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getLong(5),
                    rs.getInt(6)
            );
        }
        return c;
    }
    public static void Add(String id, String user, String name,String image, String price, String quantity) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "Insert into cart values("+id+",'"+user+"','"+ name+"','"+image+"',"+price+","+quantity+")";
        statement.executeUpdate(sql);
    }
    public static void AddQuantity(String id) throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "update cart set quantity = quantity + 1 where id="+id;
        statement.executeUpdate(sql);
    }


    public static void main(String[] args) throws SQLException {
        CartServices.Add("9","naman124", "a", "aaa", "100","1");
    }
}
