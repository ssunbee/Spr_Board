<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%-- <c:set var="article"  value="${articleMap.article}"  />
<c:set var="imageFileList"  value="${articleMap.imageFileList}"  /> --%>


<%
request.setCharacterEncoding("UTF-8");
%>

<head>
<meta charset="UTF-8">
<title>글상세창</title>
<style>
.wrap {
	width: 100%;
	marign: 0 auto;
}

.board_view {
	margin: 0 auto;
}

caption {
	margin-top: 20px;
	padding-bottom: 10px;
	margin-bottom: 10px;
	width: 1000px;
}

table {
	border-collapse: collapse;
	border: 1px solid gray;
}

th {
	width: 150px;
	height: 50px;
	background-color: #d1d1d1;
	font-size: 20px;
	line-height: 50px;
	vertical-align: middle;
}

td {
	vertical-align: middle;
}

tr {
	border: 1px solid gray;
}

caption {
	font-size: 30px;
	text-align: left;
}

input[type=button] {
	border: 2px solid #333333;
	color: #333333;
	background: none;
	width: 140px;
	height: 45px;
	cursor: pointer;
	transition: all 0.3s;
	font-weight: bold;
	font-size: 15px;
}

input[type=button]:hover {
	box-shadow: inset 0 -45px 0 0 #333333;
	font-weight: bold;
	color: aliceblue;
}

.button_wrap {
	width: 1000px;
	text-align: center;
	margin: 20px auto;
}

textarea, input {
	width: 100%;
	height: 100%;
	border: none;
	resize: none;
	background-color: transparent;
	font-size: 20px;
}

textarea:focus, input[type=text]:focus {
	width: 90%;
	height: 100%;
}

#tr_file_upload {
	display: none;
}

#tr_btn_modify {
	display: none;
	width: 100%;
	text-align: center;
}

#tr_btn_modify td {
	width: 100%;
}

#tr_btn {
	border: none;
}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
     function backToList(obj){
	    obj.action="${contextPath}/board/listArticles.do";
	    obj.submit();
     }
 
	 function fn_enable(obj){
		 document.getElementById("i_title").disabled=false;
		 document.getElementById("i_content").disabled=false;
		 document.getElementById("i_imageFileName").disabled=false;
		 document.getElementById("tr_btn_modify").style.display="block";
		 document.getElementById("tr_file_upload").style.display="block";
		 document.getElementById("tr_btn").style.display="none";
	 }
	 
	 function fn_modify_article(obj){
		 obj.action="${contextPath}/board/modArticle.do";
		 obj.submit();
	 }
	 
	 function fn_remove_article(url,articleNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var articleNOInput = document.createElement("input");
	     articleNOInput.setAttribute("type","hidden");
	     articleNOInput.setAttribute("name","articleNO");
	     articleNOInput.setAttribute("value", articleNO);
		 
	     form.appendChild(articleNOInput);
	     document.body.appendChild(form);
	     form.submit();
	 
	 }
	 
	 function fn_reply_form(url, parentNO){
		 var form = document.createElement("form");
		 form.setAttribute("method", "post");
		 form.setAttribute("action", url);
	     var parentNOInput = document.createElement("input");
	     parentNOInput.setAttribute("type","hidden");
	     parentNOInput.setAttribute("name","parentNO");
	     parentNOInput.setAttribute("value", parentNO);
		 
	     form.appendChild(parentNOInput);
	     document.body.appendChild(form);
		 form.submit();
	 }
	 
	 function readURL(input) {
	     if (input.files && input.files[0]) {
	         var reader = new FileReader();
	         reader.onload = function (e) {
	             $('#preview').attr('src', e.target.result);
	         }
	         reader.readAsDataURL(input.files[0]);
	     }
	 }  
 </script>
</head>
<body>
	<div class="wrap">
		<form style="width: 1000px; margin: 0 auto;" name="frmArticle"
			method="post" action="${contextPath}" enctype="multipart/form-data">

			<table class="board_view">
				<caption class="caption">
					<img src="${contextPath}/resources/image/house_heart_icon.png">자유게시판
				</caption>
				<tr>
					<th>제목</th>
					<td><input type=text value="${article.title }" name="title"
						id="i_title" disabled /></td>
					<th>글번호</th>
					<td><input type="text" value="${article.articleNO }" disabled />
						<input type="hidden" name="articleNO" value="${article.articleNO}" />
					</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td><input type=text value="${article.id }" name="writer"
						disabled /></td>
					<th>등록일자</th>
					<td><input type=text
						value="<fmt:formatDate value="${article.writeDate}" />" disabled />
					</td>
				</tr>
				<tr>
					<th class="text">내용</th>
					<td colspan="3"><textarea rows="20" cols="60" name="content"
							id="i_content" disabled>${article.content }</textarea></td>
				</tr>
				<c:choose>
					<c:when
						test="${not empty article.imageFileName && article.imageFileName!='null' }">
						<tr>
							<th width="150" align="center" bgcolor="#FF9933" rowspan="2">
								이미지</th>
							<td colspan="3"><input type="hidden" name="originalFileName"
								value="${article.imageFileName }" /> <img
								src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}"
								id="preview" /><br></td>
						</tr>
						<tr>
							<td colspan="3"><input type="file" name="imageFileName "
								id="i_imageFileName" disabled onchange="readURL(this);" /></td>
						</tr>
					</c:when>
					<c:otherwise>
						<tr id="tr_file_upload">
							<th width="150" align="center" bgcolor="#FF9933" rowspan="2">
								이미지</th>
							<td colspan="2"><input type="hidden" name="originalFileName"
								value="${article.imageFileName }" /></td>
						</tr>
						<tr>
							<td colspan="3"><img id="preview" /><br> <input
								type="file" name="imageFileName " id="i_imageFileName" disabled
								onchange="readURL(this);" /></td>
						</tr>
					</c:otherwise>
				</c:choose>
				<tr id="tr_btn_modify" align="center" >
					<td colspan="4" align="center"><input type=button
						value="수정반영하기" onClick="fn_modify_article(frmArticle)"> <input
						type=button value="취소" onClick="backToList(frmArticle)"></td>
				</tr>

				<tr id="tr_btn">
					<td colspan="4" align="center"><c:if
							test="${member.id == article.id }">
							<input type=button value="수정하기" onClick="fn_enable(this.form)">
							<input type=button value="삭제하기"
								onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
						</c:if> <input type=button value="리스트로 돌아가기"
						onClick="backToList(this.form)"> 
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>