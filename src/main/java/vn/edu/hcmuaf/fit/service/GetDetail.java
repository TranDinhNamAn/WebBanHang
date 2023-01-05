package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.model.ProductDetail;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class GetDetail {
    public static ProductDetail getDetail(String id) throws SQLException {
        String sql = " select p.* from productdetail p inner join product p1 on p.id =p1.productID where productID = "+id;
        Statement statement = DBConnect.getInstall().get();
        ResultSet rs = statement.executeQuery(sql);
        ProductDetail product=null;
        while(rs.next()){
          product = new ProductDetail(
                    rs.getInt(1),
                    rs.getString(2),
                   rs.getDouble(3),
                   rs.getString(4),
                   rs.getString(5),
                   rs.getString(6),
                  rs.getString(7),
                  rs.getString(8));
        }
        return product;
    }

    public static void main(String[] args) throws SQLException {
        System.out.println(GetDetail.getDetail("1").toString());
    }
}
