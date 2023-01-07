package vn.edu.hcmuaf.fit.controllerADM;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductServerADM;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ListUser", value = "/ListUser")
public class ListUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Account> list = null;
        try {
            request.setCharacterEncoding("UTF-8");
            list = ProductServerADM.getAllAcount();
            request.setAttribute("listAcount", list);
            request.getRequestDispatcher("listUser.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
