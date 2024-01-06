package org.example.traicay.controller;

import org.example.traicay.model.Fruit;
import org.example.traicay.model.FruitDTO;
import org.example.traicay.service.IFruitService;
import org.example.traicay.service.impl.FruitService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "FruitService", urlPatterns = "/fruits")
public class FruitController extends HttpServlet {
    private static IFruitService fruitService = new FruitService();
    @Override
    public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                showCreateForm(req,resp);
                break;
            case "edit":
                showEditForm(req,resp);
                break;
            default:
                listFruit(req,resp);
                break;
        }
    }

    private void showEditForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        Fruit fruit = fruitService.getFruitById(id);
        req.setAttribute("fruit", fruit);
        req.getRequestDispatcher("fruits/edit.jsp").forward(req,resp);
    }

    private void showCreateForm(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("fruits/createFruit.jsp").forward(req,resp);
    }

    private void listFruit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<FruitDTO> fruitDTOS = fruitService.getAllFruitDTO();
        req.setAttribute("fruitDTOS", fruitDTOS);
        req.getRequestDispatcher("fruits/listFruit.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        String action = req.getParameter("action");
        if (action == null){
            action = "";
        }
        switch (action){
            case "create":
                createFruit(req,resp);
                break;
            case "edit":
                editFruit(req,resp);
                break;
        }
    }

    private void editFruit(HttpServletRequest req, HttpServletResponse resp) throws IOException, ServletException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String unit = req.getParameter("unit");
        Double price = Double.valueOf(req.getParameter("price"));
        Integer idType = Integer.valueOf(req.getParameter("idType"));
        Fruit fruit = new Fruit(id, name, unit, price, idType);
        fruitService.updateFruit(fruit);
        req.getRequestDispatcher("fruits/edit.jsp").forward(req,resp);
    }

    private void createFruit(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String unit = req.getParameter("unit");
        Double price = Double.valueOf(req.getParameter("price"));
        Integer idType = Integer.valueOf(req.getParameter("idType"));
//        Date date = req.getParameter("date");
        Fruit fruit = new Fruit(id, name, unit, price, idType);
        fruitService.addFruit(fruit);
       resp.sendRedirect("/fruits");
    }
}
