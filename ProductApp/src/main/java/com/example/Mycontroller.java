package com.example;


import com.DAO.ProductDao;
import com.Model.Product;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@Controller
public class Mycontroller {

    @Autowired
    private ProductDao productDao;


    @RequestMapping("/")
    public String getIndex(Model m){
      List<Product> productList = this.productDao.getAllProducts();
      m.addAttribute("products",productList);
        return "index";
    }

    @RequestMapping("/addProduct")
    public String addProduct(Model m){
        m.addAttribute("title","Add Product");
        return "add";
    }

@RequestMapping(value = "/submit" , method = RequestMethod.POST)
    public RedirectView handleSubmit(@ModelAttribute Product product, HttpServletRequest request){

        this.productDao.createProduct(product);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;

}

@RequestMapping(value="/deleteproduct/{productId}" )
    public RedirectView deleteProduct(@PathVariable("productId") int id, HttpServletRequest request){

        this.productDao.deleteProduct(id);
        RedirectView redirectView = new RedirectView();
        redirectView.setUrl(request.getContextPath()+"/");
        return redirectView;
}


@RequestMapping(value="/updateproduct/{productId}" )
    public String updateProduct(@PathVariable("productId") int id, Model m)
{
    Product p = this.productDao.getProduct(id);
    System.out.println(p);
    m.addAttribute("product",p);
    m.addAttribute("title","Update Product");
    return "update-form";

    }





}
