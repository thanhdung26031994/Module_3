package org.example.demo.controller;

import org.example.demo.model.User;
import org.example.demo.repository.impl.UserRepository;
import org.example.demo.service.IUserService;
import org.example.demo.service.impl.UserService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "UserServlet", urlPatterns = "/users")
public class UserController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private IUserService userService;

    public void init() {
        userService = new UserService();
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createUser(req, resp);
                break;
            case "edit":
                editUser(req, resp);
                break;
            case "search":
                searchByCountry(req, resp);
                break;
            default:
                break;
        }
    }

    private void searchByCountry(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String country = req.getParameter("country");
        List<User> userList = userService.seleteUserByCountry(country);
        req.setAttribute("listUser", userList);
        req.getRequestDispatcher("user/search.jsp").forward(req,resp);
    }

    private void editUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String country = req.getParameter("country");
        User user = new User(id, name, email, country);
        userService.updateUser(user);
        RequestDispatcher dispatcher = req.getRequestDispatcher("user/edit.jsp");
        dispatcher.forward(req, resp);
    }

    private void createUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        String name = req.getParameter("name");
        String email = req.getParameter("email");
        String country = req.getParameter("country");
        User user = new User(id, name, email, country);
        userService.save(user);
        req.setAttribute("ms", "Tao moi user có tên "+ name + " thanh cong");
        listUser(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                showCreateForm(req,resp);
                break;
            case "edit":
                showEditFrom(req,resp);
                break;
            case "delete":
                deleteUserForm(req, resp);
                break;
            case "search":
                showSearchFrom(req, resp);
            default:
                listUser(req, resp);
                break;
        }
    }

    private void showSearchFrom(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("user/search.jsp").forward(req,resp);
    }

    private void deleteUserForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        userService.deleteUser(id);
        List<User> userList = userService.selectAllUser();
        req.setAttribute("listUser", userList);
        req.getRequestDispatcher("user/list.jsp").forward(req,resp);
    }

    private void showEditFrom(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt(req.getParameter("id"));
        User user = userService.getUserById(id);
        req.setAttribute("user",user);
        req.getRequestDispatcher("user/edit.jsp").forward(req,resp);
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("user/create.jsp").forward(req,resp);
    }

    private void listUser(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> userList = userService.selectAllUser();
        req.setAttribute("userList", userList);
        req.getRequestDispatcher("user/list.jsp").forward(req, resp);
    }
}
