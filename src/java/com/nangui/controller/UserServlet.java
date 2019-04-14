package com.nangui.controller;

import com.nangui.model.Roles;
import com.nangui.model.Users;
import com.nangui.service.RolesFacadeLocal;
import com.nangui.service.UsersFacadeLocal;
import java.io.IOException;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Ce servlet permet de gérer tout ce qui concerne la gestion utilisateur
 * @author Adonai Nangui
 * @since 26/03/2019
 * @version 1.0
 */
public class UserServlet extends HttpServlet {
    @EJB
    private UsersFacadeLocal ufl;
    @EJB
    private RolesFacadeLocal rfl;
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String action = (request.getParameter("action") != null) 
                ? request.getParameter("action") : "";
        
        switch(action) {
            case "inscription":
                List<Roles> roles = rfl.findAll();
                request.setAttribute("roles", roles);
                getServletContext().getRequestDispatcher("/WEB-INF/inscription.jsp")
            .forward(request, response);
            break;
            default:
                getServletContext().getRequestDispatcher("/WEB-INF/index.jsp")
            .forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String login = request.getParameter("login");
        String pwd = request.getParameter("password");
        
        Users user = ufl.findUserByLoginAndPassword(login, pwd);
        
        if (user != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("user", user);
            getServletContext().getRequestDispatcher("/WEB-INF/accueil.jsp")
                .forward(request, response);
        } else {
            request.setAttribute("message", "Login ou password incorrect");
            getServletContext().getRequestDispatcher("/WEB-INF/index.jsp")
                .forward(request, response);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "This Servlet is for manage user";
    }
}
