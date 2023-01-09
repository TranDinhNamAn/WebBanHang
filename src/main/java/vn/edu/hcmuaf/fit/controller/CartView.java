package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.service.CartServices;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "CartView", value = "/cart")
public class CartView extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Cart> list = null;
        try {
            HttpSession session = request.getSession();
            if(session.getAttribute("user")!=null) {
                list = CartServices.View((String) session.getAttribute("user"));
                request.setAttribute("cart", list);
                request.getRequestDispatcher("cart.jsp").forward(request, response);
            }else{
               response.sendRedirect("dangnhap");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
