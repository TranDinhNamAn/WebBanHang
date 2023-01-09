package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Order;
import vn.edu.hcmuaf.fit.service.ProductServerADM;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderList", value = "/OrderList")
public class OrderList extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            List<Order> list = ProductService.getOrderListByUser((String) session.getAttribute("user"));
            request.setAttribute("list", list);
            request.getRequestDispatcher("orders.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
