package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Cart;
import vn.edu.hcmuaf.fit.service.CartServices;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Date;
import java.util.List;
import java.util.Random;

@WebServlet(name = "AddOrder", value = "/AddOrder")
public class AddOrder extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            String user = request.getParameter("user");
            List<Cart> listCart = CartServices.View(user);
            Date date = new Date();
            String simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy").format(date);
            long totalMoney = 0;
            Random rd = new Random();
            int orderID = rd.nextInt(1234);
            for (Cart c : listCart
            ) {
                totalMoney = c.totalMoney();
            }
            ProductService.addOrder(Integer.toString(orderID),simpleDateFormat, user, Long.toString(totalMoney));
            for (Cart c : listCart
            ) {
                ProductService.addOrderDetail(Integer.toString(orderID),user,c.getName(),c.getImg(),Long.toString(c.getPrice()),Integer.toString(c.getQuantity()));
            }
            ProductService.deleteCart(user);
            response.sendRedirect("cart");
        } catch (SQLException e){
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
