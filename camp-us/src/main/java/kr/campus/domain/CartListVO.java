package kr.campus.domain;

import java.util.Date;

import lombok.Data;

@Data
public class CartListVO {

	private int cartID;
	private String userID;
	private String itemCode;
	private int quantity;
	private Date addDate;
	
	private int num;
	private String itemName;
	private int price;
	private String thumbnail;
}
