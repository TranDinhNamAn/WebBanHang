package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.service.Check;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "Changepass", value = "/changepass")
public class Changepass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
   HttpSession session = request.getSession();
   if(session.getAttribute("user")!=null) {
       request.getRequestDispatcher("changepass.jsp").forward(request, response);
   }else{
       response.sendRedirect("dangnhap");
   }
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            String pass = request.getParameter("pass");
            String newpass = request.getParameter("newpass");
            String repass = request.getParameter("repass");
            HttpSession session =request.getSession();
            if(pass.equals(session.getAttribute("pass"))&&newpass.equals(repass)){
                Check.Change((String) session.getAttribute("user"), newpass);
                response.sendRedirect("trangchu");
            }else{
                if(!pass.equals(session.getAttribute("pass"))){
                    request.setAttribute("Error", "Mật khẩu không chính xác");
                    request.getRequestDispatcher("changepass.jsp").forward(request, response);
                }else{
                    if(!newpass.equals(repass)&&newpass.equals("")&&repass.equals("")){
                        request.setAttribute("Error1", "Mật khẩu nhập lại không chính xác");
                        request.getRequestDispatcher("changepass.jsp").forward(request, response);
                    }
                }
            }
        }catch (SQLException e) {
            throw new RuntimeException();
        }
    }
}
