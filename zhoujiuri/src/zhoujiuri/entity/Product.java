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
	private Integer edition;
	private Date printtime;
	private Integer printnumber;
	private String isbn;
	private Double words;
	private Double page;
	private String openbook;
	private String paper;
	private String wrapper;
	private String editorrecommend;
	private String contentintroduct;
	private String authorintroduct;
	private String menu;
	private String mediacomment;
	private String bookdigest;
	private Double cutomerscore;
	private Double stock;
	private Double sale;
	private Date putaway;
	private String status;
	private String editorrecommendstatus;
	private Integer cid;
	private Category category;//关系属性
	public Product(){}
	public Product(Integer id, String name, String imagepath, String author,
			String publish, Date publishtime, Double price,
			Double dangdangprice, Integer edition, Date printtime,
			Integer printnumber, String isbn, Double words, Double page,
			String openbook, String paper, String wrapper,
			String editorrecommend, String contentintroduct,
			String authorintroduct, String menu, String mediacomment,
			String bookdigest, Double cutomerscore, Double stock, Double sale,
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
		this.edition = edition;
		this.printtime = printtime;
		this.printnumber = printnumber;
		this.isbn = isbn;
		this.words = words;
		this.page = page;
		this.openbook = openbook;
		this.paper = paper;
		this.wrapper = wrapper;
		this.editorrecommend = editorrecommend;
		this.contentintroduct = contentintroduct;
		this.authorintroduct = authorintroduct;
		this.menu = menu;
		this.mediacomment = mediacomment;
		this.bookdigest = bookdigest;
		this.cutomerscore = cutomerscore;
		this.stock = stock;
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
	public Integer getEdition() {
		return edition;
	}
	public void setEdition(Integer edition) {
		this.edition = edition;
	}
	public Date getPrinttime() {
		return printtime;
	}
	public void setPrinttime(Date printtime) {
		this.printtime = printtime;
	}
	public Integer getPrintnumber() {
		return printnumber;
	}
	public void setPrintnumber(Integer printnumber) {
		this.printnumber = printnumber;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public Double getWords() {
		return words;
	}
	public void setWords(Double words) {
		this.words = words;
	}
	public Double getPage() {
		return page;
	}
	public void setPage(Double page) {
		this.page = page;
	}
	public String getOpenbook() {
		return openbook;
	}
	public void setOpenbook(String openbook) {
		this.openbook = openbook;
	}
	public String getPaper() {
		return paper;
	}
	public void setPaper(String paper) {
		this.paper = paper;
	}
	public String getWrapper() {
		return wrapper;
	}
	public void setWrapper(String wrapper) {
		this.wrapper = wrapper;
	}
	public String getEditorrecommend() {
		return editorrecommend;
	}
	public void setEditorrecommend(String editorrecommend) {
		this.editorrecommend = editorrecommend;
	}
	public String getContentintroduct() {
		return contentintroduct;
	}
	public void setContentintroduct(String contentintroduct) {
		this.contentintroduct = contentintroduct;
	}
	public String getAuthorintroduct() {
		return authorintroduct;
	}
	public void setAuthorintroduct(String authorintroduct) {
		this.authorintroduct = authorintroduct;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public String getMediacomment() {
		return mediacomment;
	}
	public void setMediacomment(String mediacomment) {
		this.mediacomment = mediacomment;
	}
	public String getBookdigest() {
		return bookdigest;
	}
	public void setBookdigest(String bookdigest) {
		this.bookdigest = bookdigest;
	}
	public Double getCutomerscore() {
		return cutomerscore;
	}
	public void setCutomerscore(Double cutomerscore) {
		this.cutomerscore = cutomerscore;
	}
	public Double getStock() {
		return stock;
	}
	public void setStock(Double stock) {
		this.stock = stock;
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
				+ ", dangdangprice=" + dangdangprice + ", edition=" + edition
				+ ", printtime=" + printtime + ", printnumber=" + printnumber
				+ ", isbn=" + isbn + ", words=" + words + ", page=" + page
				+ ", openbook=" + openbook + ", paper=" + paper + ", wrapper="
				+ wrapper + ", editorrecommend=" + editorrecommend
				+ ", contentintroduct=" + contentintroduct
				+ ", authorintroduct=" + authorintroduct + ", menu=" + menu
				+ ", mediacomment=" + mediacomment + ", bookdigest="
				+ bookdigest + ", cutomerscore=" + cutomerscore + ", stock="
				+ stock + ", sale=" + sale + ", putaway=" + putaway
				+ ", status=" + status + ", editorrecommendstatus="
				+ editorrecommendstatus + ", cid=" + cid + ", category="
				+ category + "]";
	}
	
}
