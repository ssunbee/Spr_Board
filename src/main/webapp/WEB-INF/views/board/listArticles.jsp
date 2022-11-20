<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%
request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<style>
.table_wrap {
	margin: 0 auto;
	width: 1000px;
	height: 1500px;
	background: url(${contextPath}/resources/image/memo.png) no-repeat;
	background-size: 1000px 1500px;
	padding-top:200px;
}

table {
	width: 900px;
	margin: 0 auto;
}

.cls1 {
	text-decoration: none;
}

.cls2 {
	text-align: center;
	font-size: 30px;
}

th {
	font-size: 18px;
	height: 50px;
	line-height: 50px;
	background-color: #3B9AE1;
	color: #F7F6DC;
}

tr {
	height: 45px;
	line-height: 40px;
	border:1px solid black;
}

td {
	text-align: center;
}

#ex15 {
	height: 100px;
}

#ex15 p {
	margin: 20px;
}

#ex15 p button {
	border: none;
	width: 200px;
	height: 60px;
	background-color: #C8FFD4;
	font-size: 16px;
	font-weight: bold;
	outline: none;
	cursor: pointer;
	border-radius: 15px;
	box-shadow: 0 9px #666666;
}

#ex15 p button:hover {
	background-color: antiquewhite
}

#ex15 p button:active {
	background-color: antiquewhite;
	box-shadow: 0 5px #666666;
	transform: translateY(4px);
	/*누르는 효과*/
}
</style>
<meta charset="UTF-8">
<title>글목록창</title>
</head>
<style>
</style>
<script>
	function fn_articleForm(isLogOn, articleForm, loginForm) {
		if (isLogOn != '' && isLogOn != 'false') {
			location.href = articleForm;
		} else {
			alert("로그인 후 글쓰기가 가능합니다.")
			location.href = loginForm + '?action=/board/articleForm.do';
		}
	}
</script>
<body>
	<div id="wrap" style="width: 1920px; height: 1500px; margin: 0 auto;">
		<div class="table_wrap">
			<table>
				<tr height="10" align="center" bgcolor="lightgreen">
					<th width="10%;">글번호</th>
					<th width="10%;">작성자</th>
					<th width="50%;">제목</th>
					<th width="30%;">작성일</th>
				</tr>
				<c:choose>
					<c:when test="${articlesList ==null }">
						<tr height="10">
							<td colspan="4">
								<p align="center">
									<b><span style="font-size: 9pt;">등록된 글이 없습니다.</span></b>
								</p>
							</td>
						</tr>
					</c:when>
					<c:when test="${articlesList !=null }">
						<c:forEach var="article" items="${articlesList }"
							varStatus="articleNum">
							<tr align="center">
								<td width="5%">${articleNum.count}</td>
								<td width="10%">${article.id }</td>
								<td align='left' width="35%"><span
									style="padding-right: 30px"></span> <c:choose>
										<c:when test='${article.level > 1 }'>
											<c:forEach begin="1" end="${article.level }" step="1">
												<span style="padding-left: 20px"></span>
											</c:forEach>
											<span style="font-size: 12px;">[답변]</span>
											<a class='cls1'
												href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title}</a>
										</c:when>
										<c:otherwise>
											<a class='cls1'
												href="${contextPath}/board/viewArticle.do?articleNO=${article.articleNO}">${article.title }</a>
										</c:otherwise>
									</c:choose></td>_
								<td width="10%">${article.writeDate}</td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</table>
			<!-- <a  class="cls1"  href="#"><p class="cls2">글쓰기</p></a> -->
			<div id="ex15" style="margin: 0 auto; text-align: center;">
				<a class="cls1"
					href="javascript:fn_articleForm('${isLogOn}','${contextPath}/board/articleForm.do', 
                                                    '${contextPath}/member/loginForm.do')"><p>
						<button type="button cls2">글쓰기</button>
					</p></a>
			</div>
		</div>
	</div>
</body>
</html>