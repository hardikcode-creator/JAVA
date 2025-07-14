package com.DAO;

import com.Model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import javax.transaction.Transactional;
import java.util.List;


@Component
public class ProductDao {

    @Autowired
    private HibernateTemplate hibernateTemplate;

    @Transactional
    public void createProduct(Product product){
        this.hibernateTemplate.saveOrUpdate(product);
    }


    public List<Product> getAllProducts(){
       List<Product>products =  this.hibernateTemplate.loadAll(Product.class);
    return products;
    }

    @Transactional
    public void deleteProduct(int id){
        Product p = this.hibernateTemplate.load(Product.class,id);
        this.hibernateTemplate.delete(p);
    }


    public Product getProduct(int id){
        Product p = this.hibernateTemplate.get(Product.class,id);
        return p;
    }



}
