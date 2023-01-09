package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.CartServices;
import vn.edu.hcmuaf.fit.service.ProductServerADM;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "RemoveFromCart", value = "/removeFromCart")
public class RemoveFromCart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        System.out.println(request);
        Cart c = null;
        try {
            c = CartServices.ViewItem(String.valueOf(session.getAttribute("user")), id);
            if (c.getQuantity()>1) {
                CartServices.DecsQuantity(id);
                response.sendRedirect("cart");
            } else {
                if(c.getQuantity()==1){
                    CartServices.RemoveFromCart(id);
                    response.sendRedirect("cart");
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
