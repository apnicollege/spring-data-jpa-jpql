package com.SpringJPQL.model;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	private String title;

	private String price;

	@OneToOne
	private Vendor vendor;
	@OneToOne
	private Category category;
	@OneToOne
	private FeatureDetails featureDetails;

	 
	@ManyToMany
	@JoinTable(name="buys", 
			   joinColumns = @JoinColumn(name="product_id"),
			   inverseJoinColumns = @JoinColumn(name="customer_id"))
	private List<Customer> customers;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public Vendor getVendor() {
		return vendor;
	}

	public void setVendor(Vendor vendor) {
		this.vendor = vendor;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public FeatureDetails getFeatureDetails() {
		return featureDetails;
	}

	public void setFeatureDetails(FeatureDetails featureDetails) {
		this.featureDetails = featureDetails;
	}

	public List<Customer> getCustomers() {
		return customers;
	}

	public void setCustomers(List<Customer> customers) {
		this.customers = customers;
	}

	
}
