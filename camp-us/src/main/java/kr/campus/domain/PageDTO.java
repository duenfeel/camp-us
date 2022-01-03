package kr.campus.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDTO {

	private int startPage; //페이징 시작
	private int endPage; //페이징 끝
	private boolean prev, next;
	private int total; //총 게시물 수
	private Criteria cri; //현재 페이지(pageNum)와 페이지당 게시물 수(amount)
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 5.0)) * 5; //한 화면에 5페이지씩 출력
		this.startPage = this.endPage - 4; //5-4=1페이지, 10-4=6페이지 ...
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		
		if (realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
	}
}
