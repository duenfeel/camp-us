package kr.campus.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {
	public int pageNum; // 현재 페이지 번호.
	public int amount; // 페이지당 게시물수
	
	public String type; // 검색 타입. 내용(c)+제목(t)+작성자(w)
	public String keyword; // 검색어. 예) 새로
	public String[] getTypeArr() {
		// 검색 타입 배열 가져오기.
		return type == null ? new String[] {} : type.split("");
		// 검색타입이 널이라면 비여있는 문자열 배열을 만들고,
		// 그렇지 않다면, 검색타입을 한글자씩 잘라서 문자열 배열로 만듦.
	}
}
