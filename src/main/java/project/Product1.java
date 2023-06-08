package project;

public class Product1 {
	private String bookname;
	private String categry;
	private String image;
	private String price;
	public Product1() {
		super();
	}
	public Product1(String bookname, String categry, String image, String price) {
		this.bookname = bookname;
		this.categry = categry;
		this.image = image;
		this.price = price;
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
	@Override
	public String toString() {
		return "Product [bookname=" + bookname + ", categry=" + categry + ", image=" + image + ", price=" + price + "]";
	}

}
