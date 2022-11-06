package com.aishatmoshood.weeksixmain;

import com.aishatmoshood.weeksixmain.dao.UserDao;
import com.aishatmoshood.weeksixmain.dao.impl.UserDaoImpl;
import com.aishatmoshood.weeksixmain.dto.UserDto;
import com.aishatmoshood.weeksixmain.enums.Gender;
import com.aishatmoshood.weeksixmain.models.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.time.LocalDate;

@WebServlet(name = "SignupServlet", value = "/signup")
public class SignupServlet extends HttpServlet {
    private static UserDao userDao = new UserDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/signup.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //get all the request params
        String firstName = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String gender = request.getParameter("gender");
        String dob = request.getParameter("dob");

        //build a userdto from params
        UserDto userDto = new UserDto(firstName,lastname,email,password,gender,dob, LocalDate.now());

        if(firstName == null || lastname == null || email == null || password == null || gender == null){
            try {
                request.setAttribute("error", "You're missing one of the required inputs");
                doGet(request, response);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
            System.out.println("Error detected");
        } else {
            //make a call to the dao layer
            userDao.signUp(userDto);
            request.setAttribute("success", "Registration Successful");
            request.getRequestDispatcher("/index.jsp").forward(request, response);
        }

        System.out.println("Connected");
        System.out.println(firstName + lastname + email + password + gender + dob);
    }
}
