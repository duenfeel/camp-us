package kr.campus.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	private int pageNum; //현재 페이지번호
	private int amount; //페이지당 게시물 수
	private String category; //상품 카테고리
	
	private String type; // 검색 타입. 내용(c)+제목(t)+작성자(w)
	private String keyword; // 검색어. 예) 새로

	
	public Criteria() { //한 페이지당 12개의 게시물을 보여줌
//		this(1,12,"");
		this.pageNum = 1;
		this.amount = 12;
		this.category = "";
	}
	
	public Criteria(int pageNum, int amount, String category) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.category = category;
	}
	
	public String[] getTypeArr() {
		// 검색 타입 배열 가져오기.
		return type == null ? new String[] {} : type.split("");
		// 검색타입이 널이라면 비여있는 문자열 배열을 만들고,
		// 그렇지 않다면, 검색타입을 한글자씩 잘라서 문자열 배열로 만듦.
	}

}
