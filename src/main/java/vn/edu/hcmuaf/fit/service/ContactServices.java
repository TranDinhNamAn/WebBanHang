package vn.edu.hcmuaf.fit.service;

import vn.edu.hcmuaf.fit.db.DBConnect;
import vn.edu.hcmuaf.fit.model.Contact;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ContactServices {
    public static Contact getContact() throws SQLException {
        Statement statement = DBConnect.getInstall().get();
        String sql = "select * from contact";
        ResultSet rs = statement.executeQuery(sql);
        Contact contact = null;
        while (rs.next()){
             contact = new Contact(
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4)
            );
        }
        return contact;
    }
}
