package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Product;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "Detail", value = "/chitietxe")
public class Detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Product detail = null;
        try {
            String id = request.getParameter("id");
            detail = ProductService.getDetail(id);
            request.setAttribute("detail",detail);
            request.getRequestDispatcher("car-single.jsp").forward(request, response);
        } catch (Exception e) {
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
