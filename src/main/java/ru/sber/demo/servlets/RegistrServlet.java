package ru.sber.demo.servlets;

import ru.sber.demo.model.user.Role;
import ru.sber.demo.model.user.User;
import ru.sber.demo.repo.user.MemoryUserRepoImpl;
import ru.sber.demo.repo.user.UserRepo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

@WebServlet("/registr")
public class RegistrServlet extends HttpServlet {

    private UserRepo userRepo;

    @Override
    public void init() throws ServletException {
        userRepo = new MemoryUserRepoImpl();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("userRole", Role.values());
        req.getServletContext()
                .getRequestDispatcher("/pages/registr.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = userRepo.nextId();
        String login = req.getParameter("login");
        String password = req.getParameter("password");
        String birthday = req.getParameter("birthday");
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
        LocalDate birthdayFormat = LocalDate.parse(birthday, formatter);
        userRepo.create(new User(id, login, password, birthdayFormat, Role.USER));
        resp.sendRedirect(req.getContextPath() + "/users");
    }
}
