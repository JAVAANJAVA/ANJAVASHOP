package shop.point;

import java.util.Date;

public class MemberPointDTO {
    private Long pointNo;//포인트아이디
    private String userId;//회원아이디
    private int orderNo;//주문번호
    private int point;//적립 포인트
    private Date pointDate;//적립일
	public Long getPointNo() {
		return pointNo;
	}
	public void setPointNo(Long pointNo) {
		this.pointNo = pointNo;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public int getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getPointDate() {
		return pointDate;
	}
	public void setPointDate(Date pointDate) {
		this.pointDate = pointDate;
	}

}
