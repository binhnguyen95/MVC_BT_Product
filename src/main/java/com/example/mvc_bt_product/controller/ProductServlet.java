package com.example.mvc_bt_product.controller;

import com.example.mvc_bt_product.model.Product;
import com.example.mvc_bt_product.service.IProductService;
import com.example.mvc_bt_product.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ProductServlet", value = "/product")
public class ProductServlet extends HttpServlet {
    private IProductService productService = new ProductService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action){
            case "create":

                break;
            case "edit":

                break;
            case "delete":

                break;
            default:
                showAllProduct(request, response);
                break;
        }
    }

    private void showAllProduct(HttpServletRequest request, HttpServletResponse response){
        List<Product> productList = this.productService.findAll();
        request.setAttribute("dssp", productList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("product/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException | IOException e) {
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
