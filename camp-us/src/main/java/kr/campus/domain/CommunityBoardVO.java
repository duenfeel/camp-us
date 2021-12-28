package kr.campus.domain;

import java.util.Date;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommunityBoardVO {
	private Long bno;
	private String category;
	private String title;
	private String writerNickname;
	private String writerID;
	private Date regDate;
	private Long commentsCount;	
	private String content;
}
