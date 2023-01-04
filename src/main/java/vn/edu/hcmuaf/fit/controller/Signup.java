package vn.edu.hcmuaf.fit.controller;

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
//            try {
                String user = request.getParameter("username");
                String pass = request.getParameter("password");
                String repass = request.getParameter("repass");
                if (!pass.equals(repass)) {
                    request.getRequestDispatcher("signup.jsp").forward(request, response);
                }
//            }catch(SQLException|ClassNotFoundException e){
//                throw new RuntimeException();
//            }

    }
}
