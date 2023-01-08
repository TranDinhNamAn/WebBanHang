package vn.edu.hcmuaf.fit.controllerADM;

import vn.edu.hcmuaf.fit.model.OrderDetail;
import vn.edu.hcmuaf.fit.service.ProductServerADM;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "OrderDetailADM", value = "/OrderDetailADM")
public class OrderDetailADM extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            String id = request.getParameter("id");
            List<OrderDetail> list = ProductServerADM.getAllOrderDetail(id);
            request.setAttribute("list",list);
            request.getRequestDispatcher("orderDetail.jsp").forward(request,response);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
