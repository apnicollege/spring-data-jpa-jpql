package com.SpringJPQL.controller;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.SpringJPQL.model.Customer;
import com.SpringJPQL.model.Product;
import com.SpringJPQL.repository.CustomerRepository;
import com.SpringJPQL.repository.ProductRepository;

@RestController
public class ProductController {

	@Autowired
	private CustomerRepository customerRepository;
	@Autowired
	private ProductRepository productRepository;
	/*
	 * Print list of customer(s) having bought products sold by vendor ‘ABC Electronics’. 
	 */
	@GetMapping("/customer/vendor/{vname}")
	private Set<Customer> getCustomerByVendorName(@PathVariable("vname") String vname){
		List<Customer> list = customerRepository.getCustomerByVendorName(vname);
		Set<Customer> set = list.stream().collect(Collectors.toSet());
		return set;
	}
	
	/*
	 * Print list of customer(s) having bought products having more than 2 reviews 
	 */
	@GetMapping("/customer/reviews/{count}")
	public Set<Customer> getCustomerByReviewsCount(@PathVariable("count") Integer count){
		Set<Customer> set = customerRepository.getCustomerByReviewsCount(count);
		return set;
	}
	
	/*
	 * Print list of products owned by vendor having rating greater than 5 
	 * and should be from category mobiles having marked as featured
	 */
	@GetMapping("/product/ratings")
	public List<Product> getProductsByRatingsAndCategoryAndFeatured(){
		List<Product> list = productRepository.getProductsByRatingsAndCategoryAndFeatured("MOBILE",true);
		return list;
	}
	
	/*
	 * Print list of customers having bought products at a discounted price and
	 * have also provided their contact info
	 */
	@GetMapping("/customer/discount")
	public List<Customer> getCustomerByDiscount(){
		return customerRepository.getCustomerByDiscount(true);
	}
	
}









