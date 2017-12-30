package zhoujiuri.entity;

import java.io.Serializable;
import java.util.Date;

import org.apache.ibatis.type.Alias;

@Alias("Product")
public class Product implements Serializable{
	private Integer id;
	private String name;
	private String imagepath;
	private String author;
	private String publish;
	private Date publishtime;
	private Double price;
	private Double dangdangprice;
	private Double sale;
	private Date putaway;
	private String status;
	private String editorrecommendstatus;
	private Integer cid;
	private Category category;//关系属性
	public Product(){}
	public Product(Integer id, String name, String imagepath, String author,
			String publish, Date publishtime, Double price,
			Double dangdangprice, Double sale,
			Date putaway, String status, String editorrecommendstatus,
			Integer cid, Category category) {
		super();
		this.id = id;
		this.name = name;
		this.imagepath = imagepath;
		this.author = author;
		this.publish = publish;
		this.publishtime = publishtime;
		this.price = price;
		this.dangdangprice = dangdangprice;
		this.sale = sale;
		this.putaway = putaway;
		this.status = status;
		this.editorrecommendstatus = editorrecommendstatus;
		this.cid = cid;
		this.category = category;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImagepath() {
		return imagepath;
	}
	public void setImagepath(String imagepath) {
		this.imagepath = imagepath;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public Date getPublishtime() {
		return publishtime;
	}
	public void setPublishtime(Date publishtime) {
		this.publishtime = publishtime;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	public Double getDangdangprice() {
		return dangdangprice;
	}
	public void setDangdangprice(Double dangdangprice) {
		this.dangdangprice = dangdangprice;
	}
	public Double getSale() {
		return sale;
	}
	public void setSale(Double sale) {
		this.sale = sale;
	}
	public Date getPutaway() {
		return putaway;
	}
	public void setPutaway(Date putaway) {
		this.putaway = putaway;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getEditorrecommendstatus() {
		return editorrecommendstatus;
	}
	public void setEditorrecommendstatus(String editorrecommendstatus) {
		this.editorrecommendstatus = editorrecommendstatus;
	}
	public Integer getCid() {
		return cid;
	}
	public void setCid(Integer cid) {
		this.cid = cid;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", imagepath="
				+ imagepath + ", author=" + author + ", publish=" + publish
				+ ", publishtime=" + publishtime + ", price=" + price
				+ ", dangdangprice=" + dangdangprice 
				+ ", sale=" + sale+ ", putaway=" + putaway
				+ ", status=" + status + ", editorrecommendstatus="
				+ editorrecommendstatus + ", cid=" + cid + ", category="
				+ category + "]";
	}
	
}
