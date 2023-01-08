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
        Product p = null;
        Cart c = null;

        try {
            p = ProductServerADM.getProduct(id);
            c = CartServices.ViewItem(String.valueOf(session.getAttribute("user")), id);
            if (c == null) {
                CartServices.Add(id, (String) session.getAttribute("user"), p.getName(), p.getImg(), Long.toString(p.getPrice()), "1");
                response.sendRedirect("xemay");
            } else {
                CartServices.AddQuantity(id);
                response.sendRedirect("xemay");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }



    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
