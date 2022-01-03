package kr.campus.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ReviewVO {
	private String itemCode;
	private String userID;
	private int reviewNo;
	private String content;
	private Date reviewDate;
}
