package vn.edu.hcmuaf.fit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateOtp
 */
@WebServlet(name = "Otp", value = "/otp")
public class Otp extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        int value=Integer.parseInt(request.getParameter("otp"));
        HttpSession session=request.getSession();
        int otp=(int)session.getAttribute("otp");
        RequestDispatcher dispatcher=null;
        if (value==otp)
        {
            request.setAttribute("email", request.getParameter("email"));
            dispatcher=request.getRequestDispatcher("newpass.jsp");
            dispatcher.forward(request, response);
        }
        else
        {
            request.setAttribute("Error", "Mã OTP không chính xác!");
            dispatcher=request.getRequestDispatcher("otp.jsp");
            dispatcher.forward(request, response);
        }
    }
}
