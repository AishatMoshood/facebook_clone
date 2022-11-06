package com.aishatmoshood.weeksixmain;

import com.aishatmoshood.weeksixmain.dao.UserDao;
import com.aishatmoshood.weeksixmain.dao.impl.UserDaoImpl;
import com.aishatmoshood.weeksixmain.models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;
import jakarta.ws.rs.core.Request;

import java.io.IOException;

@WebServlet(name = "IndexServlet", value = "/login")
public class IndexServlet extends HttpServlet {
    private static UserDao userDao = new UserDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        RequestDispatcher dispatcher = null;

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User user = userDao.isUserExist(email,password);
        System.out.println(user);


        if(user != null){
            session.setAttribute("email",email);
            session.setAttribute("user_id", user.getId());
            session.setAttribute("user_first_name", user.getFirstName());
            response.sendRedirect ("/dashboard");
        } else {
            request.setAttribute("status","Invalid Credentials");
            dispatcher = request.getRequestDispatcher("/index.jsp");
            dispatcher.forward(request,response);
        }
        request.getAttribute("success");

//        if(email == null || password == null){
//            request.setAttribute("error", "You're missing one of the inputs");
//            try {
//                doGet(request, response);
//            } catch (IOException e) {
//                throw new RuntimeException(e);
//            }
//            System.out.println("Error detected");
//        } else {
//            System.out.println("Login Successful");
//        }
    }
}
