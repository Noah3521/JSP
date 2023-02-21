package model;

import java.sql.Date;

// DTO : Data Transfer Object
// - DB의 특정 테이블의 정보를 주고 받기 위한 객체
// - Java Beans 규칙에 맞춰 많이 작성한다
//
// ※ Java Beans 규칙으로 작성하면 파라미터 받는 용도로도 활용 가능

public class BookDTO {
	private int idx, price;
	private String title, writer, publisher;
	private Date publish_date;
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public Date getPublish_date() {
		return publish_date;
	}
	public void setPublish_date(Date publish_date) {
		this.publish_date = publish_date;
	}
}
