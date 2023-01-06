package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.Check;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Login", value = "/dangnhap")
public class Login extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            Cookie [] c = request.getCookies();
            for(Cookie cookie: c){

            }
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }catch (Exception e){
        }

    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            Account acc = Check.CheckLogin(user, pass);
            if (acc != null && acc.getIsAdmin()==0) {
                HttpSession session = request.getSession();
                session.setAttribute("account",acc);
                session.setMaxInactiveInterval(60);
                response.sendRedirect("trangchu");
            } else {
                if (acc != null && acc.getIsAdmin() == 1) {
                    response.sendRedirect("listproductadmin");
                } else {
                    request.setAttribute("Error", "Tên tài khoản hoặc mật khẩu không đúng!");
                    request.getRequestDispatcher("login.jsp").forward(request, response);
                }
            }
        }catch (SQLException | ClassNotFoundException e) {
                throw new RuntimeException(e);
            }
        }
    }

