package dreamwings.vo;

import java.io.Serializable;


public class Product {
	private int no;
	private String category;
	private String type;
	private String name;
	private String photo_detail;
	private String photo_preview;
	private int price;
	private int count;
	private String origin;
	private String brand;
	
	public Product() {
		super();
	}

	public Product(int no, String category, String type, String name,
			String photo_detail, String photo_preview, int price, int count,
			String origin, String brand) {
		super();
		this.no = no;
		this.category = category;
		this.type = type;
		this.name = name;
		this.photo_detail = photo_detail;
		this.photo_preview = photo_preview;
		this.price = price;
		this.count = count;
		this.origin = origin;
		this.brand = brand;
	}



	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoto_detail() {
		return photo_detail;
	}

	public void setPhoto_detail(String photo_detail) {
		this.photo_detail = photo_detail;
	}

	public String getPhoto_preview() {
		return photo_preview;
	}

	public void setPhoto_preview(String photo_preview) {
		this.photo_preview = photo_preview;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Product [no=");
		builder.append(no);
		builder.append(", category=");
		builder.append(category);
		builder.append(", type=");
		builder.append(type);
		builder.append(", name=");
		builder.append(name);
		builder.append(", photo_detail=");
		builder.append(photo_detail);
		builder.append(", photo_preview=");
		builder.append(photo_preview);
		builder.append(", price=");
		builder.append(price);
		builder.append(", count=");
		builder.append(count);
		builder.append(", origin=");
		builder.append(origin);
		builder.append(", brand=");
		builder.append(brand);
		builder.append("]");
		return builder.toString();
	}
	
	
}
