package project;

import javax.management.loading.PrivateClassLoader;

public class Product {
	
	private String bookname;
	private String categry;
	private String image;
	private String price;
	private String id;
	public Product() {
		super();
	}
	public Product(String bookname, String categry, String image, String price,String id) {
		this.bookname = bookname;
		this.categry = categry;
		this.image = image;
		this.price = price;
		this.id=id;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getCategry() {
		return categry;
	}
	public void setCategry(String categry) {
		this.categry = categry;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Product [bookname=" + bookname + ", categry=" + categry + ", image=" + image + ", price=" + price
				+ ", id=" + id + "]";
	}
	
       
	
}
