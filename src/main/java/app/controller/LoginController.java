package app.controller;

import app.service.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    UserService userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login.jsp");
        dispatcher.forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        if (username.equals("hieu@gmail.com") && password.equals("1")) {
            HttpSession session = req.getSession();
            resp.sendRedirect("/home");
        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("jsp/login.jsp");
            req.setAttribute("error", true);
            req.setAttribute("un", username);
            req.setAttribute("pw", password);
            dispatcher.forward(req,resp);
        }
    }
}
