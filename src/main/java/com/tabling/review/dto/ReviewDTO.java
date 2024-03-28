package com.tabling.review.dto;


import jdk.jfr.Registered;
import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class ReviewDTO {
	private ReviewVO reviewVO;
	private ReviewImgVO reviewImgVO;
	private ReviewThumbVO reviewThumbVO;

	private boolean hasImg;

	public ReviewDTO() {
		setHasImg();
	}

	public void setHasImg() {
		if (reviewVO.getHasImg().equals("Y")) {
			this.hasImg = true;
		}
	}
}
