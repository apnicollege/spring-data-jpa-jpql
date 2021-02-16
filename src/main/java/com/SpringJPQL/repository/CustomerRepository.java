package com.SpringJPQL.repository;

import java.util.List;
import java.util.Set;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.SpringJPQL.model.Customer;

public interface CustomerRepository extends JpaRepository<Customer, Long>{

	@Query("select c from Product p join p.customers c join p.vendor v where "
			+ "v.name = ?1")
	List<Customer> getCustomerByVendorName(String vname);

	@Query("select c from Reviews r join r.product p join p.customers c group by p.id "
			+ "having COUNT(p.id)>2")
	Set<Customer> getCustomerByReviewsCount(Integer count);

	@Query("select c from Product p join p.customers c join p.featureDetails fd "
			+ "where fd.featured =?1 AND c.id "
			+ "IN (select c.id from Contact con join con.customer c)")
	List<Customer> getCustomerByDiscount(boolean b);
 	
}
