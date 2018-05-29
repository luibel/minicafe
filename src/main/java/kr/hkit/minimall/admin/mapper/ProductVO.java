package kr.hkit.minimall.admin.mapper;

public class ProductVO {
	
	private long idx;
	private String name;
	private int price;
	private String description;
	private String image;
	
	public long getIdx() {
		return idx;
	}
	public void setIdx(long idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
}
