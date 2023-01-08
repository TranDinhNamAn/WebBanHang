package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.Check;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet(name = "Reset", value = "/reset")
public class Reset extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try{
            request.getRequestDispatcher("reset.jsp").forward(request, response);
        }catch (Exception e){
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            RequestDispatcher dispatcher = null;
            int otpvalue = 0;
            HttpSession mySession = request.getSession();
            Account acc = Check.CheckEmail(email);
            if(acc!=null) {
                System.out.println(acc.getEmail());
                Random rand = new Random();
                otpvalue = rand.nextInt(1255650);
                System.out.println(otpvalue);
                String to = email;
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.socketFactory.port", "465");
                props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.port", "465");
                Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("trandinhnamanc3lqdla@gmail.com", "yrlxpglbottivcke");// Put your email
                    }
                });
                try {
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress(email));
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                    message.setSubject("Hello");
                    message.setText("your OTP is: " + otpvalue);
                    Transport.send(message);
                    System.out.println("message sent successfully");
                }
                catch (MessagingException e) {
                    throw new RuntimeException(e);
                }
                dispatcher = request.getRequestDispatcher("otp.jsp");
                mySession.setAttribute("otp",otpvalue);
                mySession.setAttribute("email",email);
                dispatcher.forward(request, response);
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

}
