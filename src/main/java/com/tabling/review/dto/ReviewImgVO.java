package com.tabling.review.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class ReviewImgVO {
	private String reviewImgUUID;  // varchar(50),
	private String ofile;  // varchar (100),
	private String sfile;  // longtext, expecting base64 encoding
	private String type;  // varchar(10), file ext type
	private int size;  //  int, size of file
	private Date postDate;  // DATE DEFAULT(CURRENT_DATE),
}
