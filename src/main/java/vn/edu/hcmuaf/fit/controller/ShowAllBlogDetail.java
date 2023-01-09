package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Blog;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ShowAllBlogDetail", value = "/blogDatail")
public class ShowAllBlogDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String id = request.getParameter("id");
            Blog detail = ProductService.getBlogByID(id);
            request.setAttribute("detail", detail);
            request.getRequestDispatcher("blog-single.jsp").forward(request,response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
