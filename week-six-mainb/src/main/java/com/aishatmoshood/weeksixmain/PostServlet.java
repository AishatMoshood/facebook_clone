package com.aishatmoshood.weeksixmain;

import com.aishatmoshood.weeksixmain.dao.impl.PostDaoImpl;
import com.aishatmoshood.weeksixmain.dao.impl.UserDaoImpl;
import com.aishatmoshood.weeksixmain.dto.PostDto;
import com.aishatmoshood.weeksixmain.models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "PostServlet", value = "/post")
public class PostServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/dashboard.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String postTitle = request.getParameter("posttitle");
        String postBody = request.getParameter("postbody");

        String userEmail = String.valueOf(session.getAttribute("email"));

        PostDaoImpl postDaoImpl = new PostDaoImpl();

        UserDaoImpl userDaoImpl = new UserDaoImpl();
        User user = new User();

//        postDaoImpl.createPost(new PostDto(userDaoImpl.getAUser(user).getId(),postTitle,postBody,LocalDate.now()), )




        //PostDto postDto = new PostDto(,postTitle,postBody, LocalDate.now());
    }
}
