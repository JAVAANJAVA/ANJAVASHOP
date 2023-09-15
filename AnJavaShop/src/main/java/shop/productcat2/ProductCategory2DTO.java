package shop.productcat2;

public class ProductCategory2DTO {
    private int cate1;//1차 카테고리 코드
    private int cate2;//2차 카테고리 코드
    private String c2name;//2차 카테고리 이름

    // 각 변수의 Getter 및 Setter 메서드 추가

    public int getCate1() {
        return cate1;
    }

    public void setCate1(int cate1) {
        this.cate1 = cate1;
    }

    public int getCate2() {
        return cate2;
    }

    public void setCate2(int cate2) {
        this.cate2 = cate2;
    }

    public String getC2name() {
        return c2name;
    }

    public void setC2name(String c2name) {
        this.c2name = c2name;
    }
}
