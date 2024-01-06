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
            default:
                listCage(req,resp);
                break;
        }
    }

    private void listCage(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Cage> cageList = farmService.getAllCage();
        req.setAttribute("cageList", cageList);
        req.getRequestDispatcher("farm/list.jsp").forward(req,resp);
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
        }
    }

    private void createCage(HttpServletRequest req, HttpServletResponse resp) {
        Integer idCage = Integer.getInteger(req.getParameter("idCage"));
        String typeCage = req.getParameter("typeCage");
        Integer capacity = Integer.getInteger(req.getParameter("capacity"));

        Cage cage = new Cage(idCage, typeCage, capacity);
        farmService.addCage(cage);
    }
}
