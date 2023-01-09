package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "Honda", value = "/phanloai")
public class Honda extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = null;
        String id = request.getParameter("id");
        try {
            list = ProductService.getListProductByCategory(id);
            request.setAttribute("listbrand", list);
            request.getRequestDispatcher("honda.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
