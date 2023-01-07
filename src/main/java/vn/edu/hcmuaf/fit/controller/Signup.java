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
                request.setCharacterEncoding("UTF-8");
                String email = request.getParameter("email");
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                String repass = request.getParameter("repass");
                if(email.equals("")) {
                    request.setAttribute("Error", "Email không được để trống!");
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                }else {
                    if (!email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([\\w]+\\.)+[\\w]+[\\w]$")) {
                        request.setAttribute("Error", "Email không hợp lệ!");
                        request.getRequestDispatcher("signup.jsp").forward(request, response);
                    } else {
                        if (user.equals("")) {
                            request.setAttribute("Error1", "Tên tài khoản không được để trống!");
                            request.getRequestDispatcher("signup.jsp").forward(request, response);
                        } else {
                            if (pass.equals("") && repass.equals("")) {
                                request.setAttribute("Error2", "Mật khẩu không được để trống!");
                                request.getRequestDispatcher("signup.jsp").forward(request, response);
                            } else {
                                if (!pass.equals(repass)) {
                                    request.setAttribute("Error2", "Mật khẩu nhập lại không chính xác!");
                                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                                } else {
                                    Account acc = Check.CheckSignup(email, user);
                                    if (acc == null) {
                                        Check.SignUp(email, user, pass);
                                        response.sendRedirect("dangnhap");
                                    } else {
                                        request.setAttribute("Error", "Email hoặc tên tài khoản đã được sử dụng!");
                                        request.getRequestDispatcher("signup.jsp").forward(request, response);
                                    }
                                }
                            }
                        }
                    }
                }
            }catch(SQLException|ClassNotFoundException e){
                throw new RuntimeException();
            }

    }
}
