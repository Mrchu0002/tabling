# select version(); #MySQL version 8.0.35
# created by KGH
# 2024 - 03 -28 - 02:04 KST

#db create
create database matzip;
use matzip;

# table init
drop table if exists member;
drop table if exists userInfo;
drop table if exists restaurant;
drop table if exists review;
drop table if exists restImg;
drop table if exists restThumb;
drop table if exists reviewImg;
drop table if exists reviewThumb;

#------------------------------------#
#회원테이블
create table member (
userID varchar(30) not null, 
userPwd varchar(255) not null,
userUUID varchar(50),
PRIMARY KEY (userUUID),
UNIQUE(userID)
);

#회원정보 테이블
create table userInfo (
infoUUID varchar(50), #역할-유저 매칭
role varchar(30) not null, #역할
auth varchar(30), #권한
isAdmin varchar(1) default 'N', #관리자 여부확인 권한/역할보다 먼저 수행
interests varchar(255), #관심사 설정 #문자열슬라이싱 필요
PRIMARY KEY(infoUUID),
FOREIGN KEY(infoUUID) REFERENCES member(userUUID) ON DELETE CASCADE #멤버 UUID에 외래키로 참조 종속적 삭제
);

#가게정보 테이블
create table restaurant (
 restUUID varchar(50),
 restName varchar(100),
 restCrit DECIMAL(1,1), #평점 = 전체 리뷰 평점 / 리뷰수
 restReviewCnt int,  #리뷰수
 restCategory varchar(200), #카테고리  #문자열슬라이싱 필요
 hasImg varchar(1) default 'N',
 hasReview varchar(1) default 'N',
 primary key(restUUID),
 UNIQUE(restName)
);

# CREATE INDEX idx_restaurant_restUUID ON restaurant (restUUID); # 외래키 두개 설정을 위한 인덱스 생성
desc restaurant;

#리뷰 테이블
create table review (
reviewUUID varchar(50), #review UUID
reviewTargetUUID varchar(50), #restaurant와 매칭될 UUID
reviewWriter varchar(50), # writer
reviewContent varchar(255), # contents
reviewCritics DECIMAL(1,1),
postDate DATE DEFAULT (CURRENT_DATE),
hasImg varchar(1) default 'N',
primary key(reviewUUID,reviewTargetUUID),
Foreign key(reviewUUID) REFERENCES member(userUUID) ON DELETE CASCADE,
Foreign key(reviewTargetUUID) REFERENCES restaurant(restUUID),
UNIQUE (reviewWriter,reviewCritics)
);

desc review;

#이미지 파일 테이블 (가게)
create table restImg(
 fileUUID varchar(50),
 ofile varchar (100),
 sfile longtext,
 type varchar(10),
 size int,
 postDate DATE DEFAULT (CURRENT_DATE),
 primary key(fileUUID),
 UNIQUE(type),
 foreign key(fileUUID) REFERENCES restaurant(restUUID) ON DELETE CASCADE
 );
 
 
#썸네일 파일 테이블 (가게)
create table restThumb(
 thumbUUID varchar(50),
 ofile varchar (100),
 sfile longtext,
 type varchar(10),
 size int,
 postDate DATE DEFAULT (CURRENT_DATE),
 primary key(thumbUUID),
 UNIQUE(type),
 foreign key(thumbUUID) REFERENCES restIMG(fileUUID) ON DELETE CASCADE
 );

#이미지 파일 테이블	(리뷰)
create table reviewImg(
 reviewImgUUID varchar(50),
 ofile varchar (100),
 sfile longtext,
 type varchar(10),
 size int,
 postDate DATE DEFAULT (CURRENT_DATE),
 primary key(reviewImgUUID),
 UNIQUE(type),
 foreign key(reviewImgUUID) REFERENCES review(reviewUUID) ON DELETE CASCADE
 );

#썸네일 파일 테이블 (리뷰)
create table reviewThumb(
 reviewThumbUUID varchar(50),
 ofile varchar (100),
 sfile longtext,
 type varchar(10),
 size int,
 postDate DATE DEFAULT (CURRENT_DATE),
 primary key(reviewThumbUUID),
 UNIQUE(type),
 foreign key(reviewThumbUUID) REFERENCES reviewImg(reviewImgUUID) ON DELETE CASCADE
 );