package shop.productreview;

import java.sql.Timestamp;

public class ProductReviewDTO {
    private Long revNo;//리뷰번호
    private Long prodNo;//상품번호
    private String content;//리뷰내용
    private String userId;//회원아이디
    private int rating;//상품평가등급
    private String regIp;//작성IP
    private Timestamp rdate;//작성일
	public Long getRevNo() {
		return revNo;
	}
	public void setRevNo(Long revNo) {
		this.revNo = revNo;
	}
	public Long getProdNo() {
		return prodNo;
	}
	public void setProdNo(Long prodNo) {
		this.prodNo = prodNo;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getRegIp() {
		return regIp;
	}
	public void setRegIp(String regIp) {
		this.regIp = regIp;
	}
	public Timestamp getRdate() {
		return rdate;
	}
	public void setRdate(Timestamp rdate) {
		this.rdate = rdate;
	}

}
