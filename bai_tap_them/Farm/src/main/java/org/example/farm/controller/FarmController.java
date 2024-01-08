package org.example.farm.controller;

import org.example.farm.model.Cage;
import org.example.farm.service.IFarmService;
import org.example.farm.service.impl.FarmService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FarmServlet", urlPatterns = "/farms")
public class FarmController extends HttpServlet {
    private static final IFarmService farmService = new FarmService();
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreatForm(req,resp);
                break;
            case "edit":
                showEditForm(req,resp);
                break;
            case "delete":
                deleteCageById(req,resp);
                break;
            default:
                listCage(req,resp);
                break;
        }
    }

    private void deleteCageById(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer idCage = Integer.valueOf(req.getParameter("idCage"));
        farmService.deleteById(idCage);
        resp.sendRedirect("/farms");
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer idCage = Integer.valueOf(req.getParameter("idCage"));
        Cage cage = farmService.findById(idCage);
        req.setAttribute("cage", cage);
        req.getRequestDispatcher("farms/edit.jsp").forward(req,resp);
    }

    private void showCreatForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("farms/create.jsp").forward(req,resp);
    }

    private void listCage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cage> cageList = farmService.getAllCage();
        req.setAttribute("cageList", cageList);
        req.getRequestDispatcher("farms/list.jsp").forward(req,resp);
    }

    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                createCage(req,resp);
                break;
            case "edit":
                editCage(req, resp);
                break;
        }
    }

    private void editCage(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        Integer idCage = Integer.valueOf(req.getParameter("idCage"));
        String typeCage = req.getParameter("typeCage");
        Integer capacity = Integer.valueOf(req.getParameter("capacity"));
        Cage cage = new Cage(idCage, typeCage, capacity);
        farmService.updateCage(cage);
        resp.sendRedirect("/farms");
    }

    private void createCage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer idCage = Integer.valueOf(req.getParameter("idCage"));
        String typeCage = req.getParameter("typeCage");
        Integer capacity = Integer.valueOf(req.getParameter("capacity"));
        Cage cage = new Cage(idCage, typeCage, capacity);
        farmService.addCage(cage);
        resp.sendRedirect("/farms");
    }
}
