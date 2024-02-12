package ru.sber.demo;

import ru.sber.demo.model.user.Role;
import ru.sber.demo.model.user.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class FilterServlet implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse res = (HttpServletResponse) servletResponse;
        HttpSession session = req.getSession();
        User user = (User) session.getAttribute("user");
        String uri = req.getRequestURI();

        if (uri.contains("login")) {
            filterChain.doFilter(servletRequest, servletResponse);
            return;
        }
        if (user == null) {
            req.getRequestDispatcher("/pages/login.jsp").forward(servletRequest, servletResponse);
            return;
        }
        if (uri.contains("registr") && !user.getRole().equals(Role.ADMIN)) {
            res.sendRedirect("/users");
            return;
        }

        filterChain.doFilter(servletRequest, servletResponse);
    }
}
