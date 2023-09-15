package shop.productorder;

import java.sql.Timestamp;

public class ProductOrderDTO {
    private Long ordNo;//주문번호
    private String ordUserId;//주문회원아이디
    private int ordCount;//상품수량
    private double ordPrice;//상품가격
    private double ordDiscount;//할인금액
    private int ordDelivery;//배송료
    private double savePoint;//적립포인트
    private double usedPoint;//사용포인트
    private double ordTotPrice;//전체결제금액
    private String recipName;//수령인
    private String recipHp;//수령인휴대폰
    private String recipZip;//수령인우편번호
    private String recipAddr1;//주문자 주소1
    private String recipAddr2;//주문자 주소2
    private int ordPayment;//결제방법
    private int ordComplete;//결제완료확인
    private Timestamp ordDate;//주문날짜
	public Long getOrdNo() {
		return ordNo;
	}
	public void setOrdNo(Long ordNo) {
		this.ordNo = ordNo;
	}
	public String getOrdUserId() {
		return ordUserId;
	}
	public void setOrdUserId(String ordUserId) {
		this.ordUserId = ordUserId;
	}
	public int getOrdCount() {
		return ordCount;
	}
	public void setOrdCount(int ordCount) {
		this.ordCount = ordCount;
	}
	public double getOrdPrice() {
		return ordPrice;
	}
	public void setOrdPrice(double ordPrice) {
		this.ordPrice = ordPrice;
	}
	public double getOrdDiscount() {
		return ordDiscount;
	}
	public void setOrdDiscount(double ordDiscount) {
		this.ordDiscount = ordDiscount;
	}
	public int getOrdDelivery() {
		return ordDelivery;
	}
	public void setOrdDelivery(int ordDelivery) {
		this.ordDelivery = ordDelivery;
	}
	public double getSavePoint() {
		return savePoint;
	}
	public void setSavePoint(double savePoint) {
		this.savePoint = savePoint;
	}
	public double getUsedPoint() {
		return usedPoint;
	}
	public void setUsedPoint(double usedPoint) {
		this.usedPoint = usedPoint;
	}
	public double getOrdTotPrice() {
		return ordTotPrice;
	}
	public void setOrdTotPrice(double ordTotPrice) {
		this.ordTotPrice = ordTotPrice;
	}
	public String getRecipName() {
		return recipName;
	}
	public void setRecipName(String recipName) {
		this.recipName = recipName;
	}
	public String getRecipHp() {
		return recipHp;
	}
	public void setRecipHp(String recipHp) {
		this.recipHp = recipHp;
	}
	public String getRecipZip() {
		return recipZip;
	}
	public void setRecipZip(String recipZip) {
		this.recipZip = recipZip;
	}
	public String getRecipAddr1() {
		return recipAddr1;
	}
	public void setRecipAddr1(String recipAddr1) {
		this.recipAddr1 = recipAddr1;
	}
	public String getRecipAddr2() {
		return recipAddr2;
	}
	public void setRecipAddr2(String recipAddr2) {
		this.recipAddr2 = recipAddr2;
	}
	public int getOrdPayment() {
		return ordPayment;
	}
	public void setOrdPayment(int ordPayment) {
		this.ordPayment = ordPayment;
	}
	public int getOrdComplete() {
		return ordComplete;
	}
	public void setOrdComplete(int ordComplete) {
		this.ordComplete = ordComplete;
	}
	public Timestamp getOrdDate() {
		return ordDate;
	}
	public void setOrdDate(Timestamp ordDate) {
		this.ordDate = ordDate;
	}

}
