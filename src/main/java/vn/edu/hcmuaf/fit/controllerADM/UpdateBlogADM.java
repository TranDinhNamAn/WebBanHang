package vn.edu.hcmuaf.fit.controllerADM;

import vn.edu.hcmuaf.fit.service.ProductServerADM;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateBlogADM", value = "/editBlogADM")
public class UpdateBlogADM extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("blogdetail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            request.setCharacterEncoding("UTF-8");
            String id = request.getParameter("id");
            String img = request.getParameter("image");
            String date = request.getParameter("date");
            String user = request.getParameter("user");
            String name = request.getParameter("name");
            String content = request.getParameter("content");
            String title1 = request.getParameter("title1");
            String content1 = request.getParameter("content1");
            String title2 = request.getParameter("title2");
            String content2 = request.getParameter("content2");

            ProductServerADM pr = new ProductServerADM();
            pr.updateBlog(id,img,date, user,name,content,title1,content1,title2,content2);
            response.sendRedirect("ShowAllBlogADM");

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
