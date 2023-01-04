package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.Check;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Signup", value = "/dangky")
public class Signup extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            request.getRequestDispatcher("signup.jsp").forward(request, response);
        }catch (Exception e){
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                String repass = request.getParameter("repass");
                    if (!pass.equals(repass)) {
                        request.setAttribute("Error1", "Mật khẩu nhập lại không chính xác!");
                        request.getRequestDispatcher("signup.jsp").forward(request, response);
                    }else{
                        Account acc = Check.CheckSignup(user);
                        if(acc==null){
                            Check.SignUp(user, pass);
                            response.sendRedirect("dangnhap");
                        }else{
                            request.setAttribute("Error", "Tên tài khoản đã được sử dụng!");
                            request.getRequestDispatcher("signup.jsp").forward(request, response);
                        }
                    }
            }catch(SQLException|ClassNotFoundException e){
                throw new RuntimeException();
            }
    }
}
