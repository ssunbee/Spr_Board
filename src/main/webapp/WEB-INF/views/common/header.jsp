<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>헤더</title>
<link href="${contextPath}/resources/css/reset.css" rel="stylesheet" />
<link href="${contextPath}/resources/css/top.css" rel="stylesheet" />
<script src="${contextPath}/resources/js/pp.js"></script>
</head>
<script>
    function logout() {
        alert("로그아웃되었습니다.");
    }
    
    
    function fn_listMembers(isLogOn,listMembers,loginForm){
  	  if(isLogOn != '' && isLogOn != 'false'){
  	    location.href=listMembers;
  	  }else{
  	    alert("로그인 후 정보보기가 가능합니다.")
  	    location.href=loginForm+'?action=/member/listMembers.do';
  	  }
  	}
</script>
<body>
	<div id="wrap">
		<header id="top">
			<div class="banner1">
				<h1>
					<a href="${contextPath}/main.do"><img
						src="${contextPath}/resources/image/banner.png" alt="#"
						width="242" height="50"></a>
				</h1>
				<div id="con1">
					<c:choose>
						<c:when test="${isLogOn == true  && member!= null}">
							<h3 style="margin-left: 400px;">
								환영합니다. ${member.name }님! <a
									href="${contextPath}/member/logout.do" onclick="logout()">
									<img src="${contextPath}/resources/image/logcheck.png"
									alt="로그아웃" width="30" height="30">
								</a>
							</h3>
						</c:when>
						<c:otherwise>
							<a href="${contextPath}/member/loginForm.do"><img
								src="${contextPath}/resources/image/login.png" alt="로그인"
								width="30" height="30"></a>
						</c:otherwise>
					</c:choose>
				</div>

			</div>
			<div id="main">
				<nav id="main_navi">

					<ul id="menu">
						<li class="menu1"><a href="#">제품소개</a>
							<ul class="submenu menu1_1">
								<li><a href="#">우유류</a></li>
								<li><a href="#">발효유류</a></li>
								<li><a href="#">유음료류</a></li>
								<li><a href="#">커피음료</a></li>
								<li><a href="#">치즈류</a></li>
								<li><a href="#">가공식품류</a></li>
								<li><a href="#">디저트류</a></li>
								<li><a href="#">반려동물제품</a></li>
								<li><a href="#">수입제품</a></li>
							</ul></li>
						<li class="menu1"><a href="#">about서울우유</a>
							<ul class="submenu menu1_2">
								<li><a href="#">조합현황</a></li>
								<li><a href="#">중앙연구소</a></li>
								<li><a href="#">채용정보</a></li>
								<li><a href="#">입찰정보</a></li>
								<li><a href="#">Contact Us</a></li>
							</ul></li>
						<li class="menu1"><a
							href="${contextPath}/board/listArticles.do">자유게시판</a></li>
						<li class="menu1"><a
							href="javascript:fn_listMembers('${isLogOn}','${contextPath}/member/listMembers.do', 
                                                    '${contextPath}/member/loginForm.do')">회원정보</a></li>
					</ul>

				</nav>
			</div>
		</header>

	</div>

</body>
</html>