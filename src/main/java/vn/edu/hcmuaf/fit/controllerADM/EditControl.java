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

@WebServlet(name = "EditControl", value = "/editProduct")
public class EditControl extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("updateProduct.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("id");
            String name = request.getParameter("name");
            String img = request.getParameter("image");
            String price = request.getParameter("price");
            String isNew = request.getParameter("isNew");
            String brandID = request.getParameter("brandID");
            String distance = request.getParameter("distance");
            String gear = request.getParameter("gear");
            String storage = request.getParameter("storage");
            String fuel = request.getParameter("fuel");

            ProductServerADM pr = new ProductServerADM();
            pr.updateProduct(id,name, img, price,isNew, brandID,distance,gear,storage,fuel);
            response.sendRedirect("ShowAllProduct");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
