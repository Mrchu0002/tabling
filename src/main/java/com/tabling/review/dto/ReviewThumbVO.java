package com.tabling.review.dto;

import lombok.Data;

import java.sql.Date;

@Data
public class ReviewThumbVO {
	private String reviewThumbUUID;  // varchar(50)
	private String ofile;  // varchar (100),
	private String sfile;  // longtext,
	private String type;  // varchar(10),
	private int size;  // int,
	private Date postDate;  // DATE DEFAULT(CURRENT_DATE),
}
