package com.SpringJPQL.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringJPQL.model.Product;

public interface ProductRepository extends JpaRepository<Product, Long>{

	@Query("select p from Product p join p.category c join p.featureDetails fd "
			+ "join p.vendor v where c.name = ?1 AND fd.featured=?2 AND v.id "
			+ "IN (select v.id from Account a join a.vendor v where a.ratings>5)")
	List<Product> getProductsByRatingsAndCategoryAndFeatured(String cname1,boolean val);

}
