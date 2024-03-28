package com.tabling.board.dto;


import lombok.Data;

@Data
public class RestVO {
	private String restUUID;  // varchar(50),
	private String restName;  // varchar(100),
	private double restCrit;  // DECIMAL(1,1), #평점 = 전체 리뷰 평점 / 리뷰수
	private int restReviewCnt;  // int,  #리뷰수
	private String restCategory;  // varchar(200), #카테고리  #문자열슬라이싱 필요
	private String hasImg;  // varchar(1) default 'N',
	private String hasReview;  // varchar(1) default 'N',
}