<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"   isELIgnored="false"
 %>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>하단 부분</title>
  <style>
#bottom_wrap {
    clear: both;
    widows: 1920px;
    height: 300px;
    margin-top: 100px;
    background-color:seagreen;
    overflow: hidden;
}

#bottom {
    width: 1920px;
    height: 300px;
    margin: 0px auto;
    text-align: center;
    background: url(${contextPath}/resources/image/bn.png) no-repeat 0 -500px;
background-size: cover;
    
    
}

#bottom > ul {
    width: 1000px;
    height: 30px;
    margin-right: auto;
    margin-left: auto;
    margin-bottom: 80px;
    /*border: 1px solid red;*/
    text-align: center;
    line-height: 30px;
    padding-top: 30px;


}

#bottom ul li {
    display: inline-block;
    margin: 0 10px;
    padding-left: 10px;
}

#bottom ul li a {
    font-size: 12px;
    color: #ffffff;
}

#bottom ul li a:hover {
    color: #000;
    font-weight: bold;
}

#bottom > address {
    width: 1000px;
    height: 200px;
    font-size: 14px;
    font-style: normal;
    margin: 0px auto;
    text-align: left;
}

#bottom > address > img {
    margin-bottom: 50px;
}

#tel {
    width: 150px;
    height: 30px;
    border-radius: 10px;
    background: url(${contextPath}/resources/image/tel.png)no-repeat 130px 3px;
    background-size: 20px 20px;
    line-height: 40px;
}

#tel:hover{
    text-shadow: 5px,5px,5px,0.5; font-weight: bold;
    color: #ffffff;
}
#tel > a {
    padding-right: 10px;
}

#bottom > address > p > span {
    margin: 0 30px
}  
  </style>
</head>
<body>
<div id="bottom_wrap">
        <footer id="bottom">
            <ul>
                <li><a href="#">이용약관</a></li>
                <li><a href="#">개인정보처리방침</a></li>
                <li><a href="#">이메일무단수집거부</a></li>
                <li><a href="#">고객센터</a></li>
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">공정거래 자율준수프로그램</a></li>
                <li><a href="#">신용정보활용체제</a></li>
                <li><a href="#">금융소비자보호</a></li>
            </ul>
            <address>
                <p><img src="${contextPath}/resources/image/banner.png" alt="서울우유협동조합" width="180" height="40"></p>
                <p id="tel"><a href="https://www.seoulmilk.co.kr/enterprise/cs/cs_main.sm">서울우유고객상담</a></p>
                <p>사업자번호 : 216-82-00028<span>서울특별시 중랑구 중랑천로 71 [지번]서울시 중랑구 상봉2동 137-7</span>서울우유협동조합 | 조합장 : 문진섭</p>
                <p>TEL:080-021-5656<span>전자우편 : seoulmilk@seoulmilk.co.kr(발신전용)</span></p>
                <p>Copyright © 2014 Seoulmilk. All Rights Reserved.</p>
            </address>
        </footer>
    </div>
</body>
</html>