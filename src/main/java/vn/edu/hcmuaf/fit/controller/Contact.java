package vn.edu.hcmuaf.fit.controller;

import vn.edu.hcmuaf.fit.model.Account;
import vn.edu.hcmuaf.fit.service.Check;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Properties;
import java.util.Random;

@WebServlet(name = "Contact", value = "/contact")
public class Contact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String email = request.getParameter("email");
        String sub = request.getParameter("sub");
        String content = request.getParameter("content");
        RequestDispatcher dispatcher = null;
        HttpSession mySession = request.getSession();
            String to = "20130196@st.hcmuaf.edu.vn";
            Properties props = new Properties();
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.socketFactory.port", "465");
            props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.port", "465");
            Session session = Session.getDefaultInstance(props, new Authenticator() {
                protected PasswordAuthentication getPasswordAuthentication() {
                    return new PasswordAuthentication("trandinhnamanc3lqdla@gmail.com", "yrlxpglbottivcke");// Put your email
                }
            });
            try {
                System.out.println(content);
                MimeMessage message = new MimeMessage(session);
                message.setFrom(email);
                message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
                message.setSubject(sub);
                message.setText(content);
                Transport.send(message);
                System.out.println("message sent successfully");
            }
            catch (MessagingException e) {
                throw new RuntimeException(e);
            }
            dispatcher = request.getRequestDispatcher("contact.jsp");
            dispatcher.forward(request, response);
        }
    }

