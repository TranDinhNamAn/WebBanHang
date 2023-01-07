package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.Check;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet(name = "Newpass", value = "/newpass")
public class Newpass extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        HttpSession session = request.getSession();
        String pass = request.getParameter("pass");
        String repass = request.getParameter("repass");
        RequestDispatcher dispatcher = null;
        if (!pass.equals("") && !repass.equals("") && pass.equals(repass)) {
            Check.Reset((String) session.getAttribute("email"), pass);
            dispatcher = request.getRequestDispatcher("login.jsp");
                } else {
                    request.setAttribute("Error", "Mật khẩu nhập lại không chính xác!");
                    dispatcher = request.getRequestDispatcher("newpass.jsp");
                }
                dispatcher.forward(request, response);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

