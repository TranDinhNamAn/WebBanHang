package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "PhanLoai", value = "/phanloai")
public class PhanLoai extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = null;
        String id = request.getParameter("id");
        HttpSession session = request.getSession();
        session.setAttribute("id", id);
        try {
            list = ProductService.getListProductByCategory((String) session.getAttribute("id"));
            request.setAttribute("listbrand", list);
            request.getRequestDispatcher("phanloai.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new RuntimeException();
        }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
