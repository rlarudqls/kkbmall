<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>@charset "UTF-8";
*{
	margin: 0;
	padding:0;
}
a{
	text-decoration: none;
}
ul{
    list-style: none;
}
/* 화면 전체 렙 */
.wrapper{
	width: 100%;
}
/* content 랩 */
.wrap{
	width : 1080px;
	margin: auto;
}
/* 홈페이지 기능 네비 */ 
.top_gnb_area{
	width: 100%;
    height: 50px;
    background-color: #f0f0f1;
    position:relative;
}
.top_gnb_area .list{
	position: absolute;
    top: 0px;
    right: 0;
    
}
.top_gnb_area .list li{
	list-style: none;	
    float : left;
    padding: 13px 15px 0 10px;
    font-weight: 900;
    cursor: pointer;
}

/* 관리제 페이지 상단 현페이지 정보 */
.admin_top_wrap{
    height:110px;
    line-height: 110px;
    background-color: #333;
    margin-bottom: 15px;
}
.admin_top_wrap>span{
    margin-left: 30px;
    display:inline-block;
    color: white;
    font-size: 50px;
    font-weight: bolder;
}
/* 관리자 wrap(네비+컨텐츠) */
.admin_wrap{
    
    
}

/* 관리자페이지 네비 영역 */
.admin_navi_wrap{
    width: 20%;
    height: 300px;
    float:left;
    height: 100%;
}
.admin_navi_wrap li{
    display: block;
    height: 80px;
    line-height: 80px;
    text-align: center;
}
.admin_navi_wrap li a{
    display: block;
    height: 100%;
    width: 95%;
    margin: 0 auto;
    cursor: pointer;
    font-size: 30px;
    font-weight: bolder;
}
.admin_navi_wrap li a:link {color: black;}
.admin_navi_wrap li a:visited {color: black;}
.admin_navi_wrap li a:active {color: black;}
.admin_navi_wrap li a:hover {color: black;}

.admin_list_02{
    background-color: #c8c8c8;
} 


/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap{
    width: 80%;
    float:left;
    min-height: 700px;
}
.admin_content_subject{	/* 관리자 컨텐츠 제목 영역 */
    font-size: 40px;
    font-weight: bolder;
    padding-left: 15px;
    background-color: #333;
    height: 80px;
    line-height: 80px;
    color: white;	
}
/* 관리자 컨텐츠 메인 영역 */
.form_section{
	width: 95%;
    margin-left: 2%;
    margin-top: 20px;
    border: 1px solid #dbdde2;
    background-color: #efefef;	
}
.form_section_title{
	padding: 20px 35px;	
}
.form_section_title label{
	display: block;
    font-size: 20px;
    font-weight: 800;
}
.form_section_content{
	padding: 20px 35px;
    border-top: 1px solid #dbdde2;	
}
.form_section_content input{
	width: 98%;
    height: 25px;
    font-size: 20px;
    padding: 5px 1%;
}

							
.ui-datepicker-trigger {						/* 캘린더 css 설정 */
    margin-left: 25px;
    width: 14%;
    height: 38px;
    font-weight: 600;
    background-color: #dfe8f5;
    font-size: 15px;
    cursor:pointer;
}
input[name='publeYear'] {
    width: 80%;
    text-align: center;
}


.authorId_btn {						/* 작가 선택 css 설정 */
    margin-left: 20px;
    width: 14%;
    height: 38px;
    font-weight: 600;
    background-color: #dfe8f5;
    font-size: 15px;
    cursor:pointer;
}
#authorName_input {
    width: 80%;
    text-align: center;
}

.ck-content {						/* ckeditor 높이 */
    height: 170px;
}

/* 상품 이미지 */
	#result_card img{
		max-width: 100%;
	    height: auto;
	    display: block;
	    padding: 5px;
	    margin-top: 10px;
	    margin: auto;	
	}
	#result_card {
		position: relative;
	}
	.imgDeleteBtn{
	    position: absolute;
	    top: 0;
	    right: 5%;
	    background-color: #ef7d7d;
	    color: wheat;
	    font-weight: 900;
	    width: 30px;
	    height: 30px;
	    border-radius: 50%;
	    line-height: 26px;
	    text-align: center;
	    border: none;
	    display: block;
	    cursor: pointer;	
	}

/* 버튼 영역 */
.btn_section{
	text-align: center;
	margin: 80px 0;
}
.btn{
    min-width: 180px;
    padding: 4px 30px;
    font-size: 25px;
    font-weight: 600;
    line-height: 40px;
}
.enroll_btn{
	background-color: #dbdde2;
	margin-left:15px;
}
#enrollBtn:hover {
    background-color: #c9cbd0;
}
.delete_btn{
	background-color: #efcdcd;
}
.delete_btn:hover{
	background-color : #e4a7a7;
}

.form_section_content select {		/* 카테고리 css 설정 */
    width: 92%;
    height: 35px;
    font-size: 20px;
    text-align-last: center;
    margin-left: 5px;
}
.cate_wrap span {
    font-weight: 600;
}
.cate_wrap:not(:first-child) {
    margin-top: 20px;
}


.ck_warn{			/* 입력란 공란 경고 태그 */
	display: none;
    padding-top: 10px;
    text-align: center;
    color: #e05757;
    font-weight: 300;    
}


/* footer navai 영역 */
.footer_nav{
	width:100%;
	height:50px;
}
.footer_nav_container{
	width: 100%;
	height: 100%;
	background-color:#8EC0E4;
}
.footer_nav_container>ul{
	font-weight : bold;
	float:left;
	list-style:none;
	position:relative;
	padding-top:10px;
	line-height: 27px;
	font-family: dotum;
	margin-left: 10px;
}
.footer_nav_container>ul>li{
	display:inline;
	width: 45px;
	height: 19px;
	padding: 10px 9px 0 10px;
}
.footer_nav_container>ul>span{
	margin: 0 4px;
}
/* footer 영역 */
.footer{
	width:100%;
	height:130px;
	background-color:#D4DFE6;
	padding-bottom : 50px;
}
.footer_container{
	width: 100%;
	height: 100%;
	margin: auto;
}
.footer_left>img {
	width: 150%;
    height: 130px;
    margin-left: -20px;
    margin-top: -12px;
}
.footer_left{
	float :left;
	width: 170px;
	margin-left: 20px;
	margin-top : 30px;
	
}
.footer_right{
	float :left;
	width: 680px;
	margin-left: 70px;
	margin-top : 30px;
}



/* float 속성 해제 */
.clearfix{
	clear: both;
}</style><link rel="stylesheet" href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
</head>

<body>

<%@include file="../includes/admin/header.jsp"%>

<div class="admin_content_wrap">
    <div class="admin_content_subject">
        <span>상품 등록</span>
    </div>
    <div class="admin_content_main">
        <form action="/admin/goodsModify" method="post" id="modifyForm">
            <div class="form_section">
                <div class="form_section_title">
                    <label>상품명</label>
                </div>
                <div class="form_section_content">
                    <input name="beanName" value="${goodsInfo.beanName}"> <span class="ck_warn beanName_warn">상품명을 입력해주세요.</span>
                </div>
            </div>
            <div class="form_section">
                <div class="form_section_title">
                    <label>작가</label>
                </div>
                <div class="form_section_content">
                    <input id="authorName_input" readonly="readonly" value="${goodsInfo.authorName}"> <input id="authorId_input" name="authorId" type="hidden" value="${goodsInfo.authorId}">
                    <button class="authorId_btn">판매자 선택</button>
                    <span class="ck_warn authorId_warn">판매자를 선택해주세요</span>
                </div>
            </div>
            <div class="form_section">
                <div class="form_section_title">
                    <label>판촉일</label>
                </div>
                <div class="form_section_content">
                    <input name="publeYear" autocomplete="off" readonly="readonly">
                    <span class="ck_warn publeYear_warn">판촉일을 선택해주세요.</span>
                </div>
            </div>
            <div class="form_section">
                <div class="form_section_title">
                    <label>판촉회사</label>
                </div>
                <div class="form_section_content">
                    <input name="publisher" value="${goodsInfo.publisher}"> <span class="ck_warn publisher_warn">판촉회사를 입력해주세요.</span>
                </div>
            </div>
            <div class="form_section">
                <div class="form_section_title">
                    <label>가격</label>
                </div>
                <div class="form_section_content">
<input name="price" value="${goodsInfo.beanPrice}"> <span class="ck_warn price_warn">가격을 입력해주세요.</span>
                </div>
            </div>
            <div class="form_section">
                <div class="form_section_title">
                    <label>재고수량</label>
                </div>
                <div class="form_section_content">
<input name="stock" value="${goodsInfo.beanStock}"> <span class="ck_warn stock_warn">재고수량을 입력해주세요.</span>
                </div>
            </div>
            <div class="form_section">
                <div class="form_section_title">
                    <label>상품설명</label>
                </div>
                <div class="form_section_content">
                    <textarea name="description">${goodsInfo.beanIntro}</textarea>
<span class="ck_warn description_warn">상품설명을 입력해주세요.</span>
</div>
            </div>
            <div class="form_section_btn">
                <button id="modifyBtn" type="submit">수정하기</button>
                <button id="deleteBtn" type="button">삭제하기</button>
            </div>
        </form>
        <form action="/admin/goodsDelete" method="post" id="deleteForm" style="display: none;">
            <input type="hidden" name="beanId" value="${goodsInfo.beanId}">
        </form>
    </div>
</div>

<script type="text/javascript">
    $(document).ready(function () {
        // 작가 선택 버튼 클릭 시 팝업창 오픈
        $(".authorId_btn").on("click", function () {
            window.open("/admin/authorList", "작가 선택", "width=800, height=600, scrollbars=yes");
        });

        // 판촉일 input을 datepicker로 변경
        $("input[name=publeYear]").datepicker({
            dateFormat: "yy-mm-dd"
        });

        // 수정 버튼 클릭 시 폼 제출
        $("#modifyBtn").on("click", function (e) {
            e.preventDefault();
            let modifyForm = $("#modifyForm");
            modifyForm.submit();
        });

        // 삭제 버튼 클릭 시 폼 제출
        $("#deleteBtn").on("click", function (e) {
            e.preventDefault();
            let deleteForm = $("#deleteForm");
            deleteForm.submit();
        });
    });
</script>

</body>
</html>
