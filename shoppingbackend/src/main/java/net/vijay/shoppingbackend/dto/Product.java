package net.vijay.shoppingbackend.dto;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;



@Entity
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private int	id ;
    
    @Transient
    @JsonIgnore
    private MultipartFile  file;
    
    public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	@NotNull(message = "Name is required") 
    @Size(min= 1 , max = 15)
	
	private String name ;
    
    
    
    
	@NotNull(message = "desc is required")
	@Size(min= 1 , max = 50)
    private String description ;
	
	@NotNull(message = "image url is required")
	
	private String image_url;
	
	@NotNull(message = "quantity is required")
	
	private int quantity;
	
	@NotNull(message = "price is mandotory")
	private int price ;
	
	@NotNull(message = "give product as active")
	@Column(name = "is_active")
	private boolean active = true;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage_url() {
		return image_url;
	}
	public void setImage_url(String image_url) {
		this.image_url = image_url;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", image_url=" + image_url
				+ ", quantity=" + quantity + ", price=" + price + ", active=" + active + "]";
	}

}
