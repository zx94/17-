package zhoujiuri.entity;

import java.io.Serializable;

import org.apache.ibatis.type.Alias;
@Alias("Cartitem")
public class Cartitem implements Serializable{
	private Integer id;
	private String name;
	private Double price;
	private Double dangdangprice;
	private Integer amount;
	private String status;
	public Cartitem(){}
	public Cartitem(Integer id, String name, Double price,
			Double dangdangprice, Integer amount, String status) {
		super();
		this.id = id;
		this.name = name;
		this.price = price;
		this.dangdangprice = dangdangprice;
		this.amount = amount;
		this.status = status;
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
	public Integer getAmount() {
		return amount;
	}
	public void setAmount(Integer amount) {
		this.amount = amount;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return "Cartitem [id=" + id + ", name=" + name + ", price=" + price
				+ ", dangdangprice=" + dangdangprice + ", amount=" + amount
				+ ", status=" + status + "]";
	}
	
}
