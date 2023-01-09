package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.OrderDetail;
import vn.edu.hcmuaf.fit.service.ProductServerADM;
import vn.edu.hcmuaf.fit.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.awt.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "GetOrderDetail", value = "/getOrderDetail")
public class GetOrderDetail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            if(session.getAttribute("user")!=null) {
                String id = request.getParameter("id");
                if(id!=null) {
                    List<OrderDetail> list = ProductService.getOrderDetailByUser(id);
                    request.setAttribute("list", list);
                    request.setAttribute("id", id);
                    request.getRequestDispatcher("getOrderDetail.jsp").forward(request, response);
                }else{
                    response.sendRedirect("OrderList");
                }
            }else{
                response.sendRedirect("dangnhap");
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
