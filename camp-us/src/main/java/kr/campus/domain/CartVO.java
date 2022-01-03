package kr.campus.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CartVO {
	private int cartID; 
	private String userID;	
	private String itemCode;
	private int quantity; //총 개수	
	private int money; //price * quantity
	private Date addDate;
}
