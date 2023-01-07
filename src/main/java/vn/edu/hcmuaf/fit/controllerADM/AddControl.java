package vn.edu.hcmuaf.fit.controllerADM;

import vn.edu.hcmuaf.fit.model.Brand;
import vn.edu.hcmuaf.fit.service.ProductServerADM;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "AddControl", value = "/addProduct")
public class AddControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Brand> list = ProductService.getListBrand();
            request.setAttribute("ListBrand",list);
            request.getRequestDispatcher("addProduct.jsp").forward(request,response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            List<Brand> list = ProductService.getListBrand();
            request.setAttribute("ListBrand", list);
            String name = request.getParameter("name");
            String img = request.getParameter("image");
            String price = request.getParameter("price");
            String isNew = request.getParameter("isNew");
            String brandID = request.getParameter("brandID");
            ProductServerADM pr = new ProductServerADM();
            pr.addProduct(name, img, price,isNew, brandID);
            response.sendRedirect("listproductadmin");
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
}
