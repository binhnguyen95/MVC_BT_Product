package com.example.mvc_bt_product.service;

import com.example.mvc_bt_product.model.Product;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {
    private static final Map<Integer, Product> products;

    static {
        products = new HashMap<>();
        products.put(1, new Product(1, "Thịt chó", 15.99, "Chó nướng", "VN"));
        products.put(2, new Product(2, "Thịt mèo", 17.99, "Mèo nướng", "VN"));
        products.put(3, new Product(3, "Thịt lợn", 7.99, "Lợn luộc", "VN"));
        products.put(4, new Product(4, "Thịt chim bồ câu", 9.99, "Xôi chim", "VN"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }
}
