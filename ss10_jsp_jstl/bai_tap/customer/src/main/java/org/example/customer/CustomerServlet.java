package org.example.customer;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = " customerList", urlPatterns = "/customer")
public class CustomerServlet extends HttpServlet {
    private static List<Customer> customerList = new ArrayList<>();
    static {

        customerList.add(new Customer("Mai Văn Hoàn", "1983-08-20", "Hà Nội", "https://bizweb.dktcdn.net/100/418/981/collections/luffy.png?v=1648124478523"));
        customerList.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://bizweb.dktcdn.net/100/418/981/collections/luffy.png?v=1648124478523"));
        customerList.add(new Customer("Nguyễn Thái Hoà", "1983-08-22", "Hà Tây", "https://bizweb.dktcdn.net/100/418/981/collections/luffy.png?v=1648124478523"));
        customerList.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Nam Định", "https://bizweb.dktcdn.net/100/418/981/collections/luffy.png?v=1648124478523"));
        customerList.add(new Customer("Nguyễn Đình Thi", "1983-08-19", "Hà Nội", "https://bizweb.dktcdn.net/100/418/981/collections/luffy.png?v=1648124478523"));
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
        request.setAttribute("list", customerList);
        dispatcher.forward(request, response);
    }
}
