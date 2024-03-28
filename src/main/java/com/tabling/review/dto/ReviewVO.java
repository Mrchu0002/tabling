package com.tabling.review.dto;


import lombok.Data;

import java.sql.Date;

@Data
public class ReviewVO {
	private String reviewUUID; // varchar(50), #review UUID
	private String reviewTargetUUID; // varchar(50), #restaurant와 매칭될 UUID
	private String reviewWriter; // varchar(50), # writer
	private String reviewContent; // varchar(255), # contents
	private Double reviewCritics; // DECIMAL(1,1), # critics point
	private Date postDate; // DATE DEFAULT (CURRENT_DATE),
	private String hasImg; // varchar(1) default 'N',

	private Boolean hasImgbool; //

	public void setHasImgbool() {
		if (this.hasImg.equals("Y")) {
            this.hasImgbool = true;
        }else if (this.hasImg.equals("N")) {
            this.hasImgbool = false;
        }
        System.out.println("hasImgbool : " + this.hasImgbool);
	}
}
