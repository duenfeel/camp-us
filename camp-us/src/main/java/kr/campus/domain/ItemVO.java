package kr.campus.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ItemVO {

   // 코드
   private String itemCode;
   // 이름
   private String itemName;

   // 가격
   private int price;

   // 수량(재고)
   private int quantity;

   // 등급
   private int ratings;

   // 카테고리
   private String category;

   // 구매된 횟수
   private int purchases;

   // 리뷰
   private int reviewno;

   // 문의
   private int qnano;

   // 업로드 날짜
   private Date regDate;

   // 썸네일
   private String thumbNail;

   // 수정 날짜
   private Date updateDate;
   
   // 상품 디테일 이미지
   private String details;

}