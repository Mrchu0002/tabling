package com.tabling.board.dto;


import lombok.*;

@Getter
@Setter
@ToString
@AllArgsConstructor
public class RestaurantDTO {
	private RestVO restVO;
	private RestImgVO restImgVO;
	private RestThumbVO restThumbVO;


	private boolean hasImgbool;  // varchar(1) default 'N',
	private boolean hasReviewbool;  // varchar(1) default 'N',


	public RestaurantDTO(RestVO restVO, RestImgVO restImgVO , RestThumbVO restThumbVO) {
		setHasImgbool();
		setHasReviewbool();
	}
	public void setHasImgbool() {
		if (this.restVO.getHasImg().equals("Y")) {
            this.hasImgbool = true;
        }else if (this.restVO.getHasImg().equals("N")) {
			this.hasImgbool = false;
		}
	}

	public void setHasReviewbool() {

		if (this.restVO.getHasReview().equals("Y")) {
			this.hasReviewbool = true;
		}else if (this.restVO.getHasReview().equals("N")) {
			this.hasReviewbool = false;
		}
	}
}
