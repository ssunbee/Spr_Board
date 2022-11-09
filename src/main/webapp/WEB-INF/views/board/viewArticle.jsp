<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%-- <c:set var="article"  value="${articleMap.article}"  />
<c:set var="imageFileList"  value="${articleMap.imageFileList}"  /> --%>


<%
  request.setCharacterEncoding("UTF-8");
%> 

<head>
   <meta charset="UTF-8">
   <title>글보기</title>
   <style>
   .wrap{width:100%; marign:0 auto; }
    .board_view{border: 1px solid red; margin: 0 auto;}
        caption{margin-top:20px; padding-bottom:10px; margin-bottom: 10px; width: 1000px; background-color:#C8D2D1;}
        table{border-collapse: collapse;}
        th {width: 150px;height: 50px; background-color: #d1d1d1; font-size: 20px;line-height: 50px; }
        tr{border:1px solid gray;}
        .text{height: 300px; line-height:300px;}
        caption{font-size: 30px; text-align: left; }
         input[type=button] {
            border: 2px solid #333333;
            color: #333333;
            background: none;
            width: 120px;
            height: 45px;
            cursor: pointer;
            transition: all 0.3s;
            font-weight: bold;
        }
        input[type=button]:hover {
    box-shadow: inset 0 -45px 0 0 #333333; font-weight: bold; color: aliceblue; }
    .button_wrap{ width: 1000px; text-align: center; margin:20px auto;}
     textarea ,input {
    width: 90%;
    height: 100%;
    border: none;
    resize: none;
    background-color:transparent;
    
  }
  textarea:focus, input:focus {
    outline: none;
}
    #tr_file_upload{
       display:none;
     }
     #tr_btn_modify{
       display:none;
     }
     #tr_btn{border:none;}
     

   
   
   </style>
   <script  src="http://code.jquery.com/jquery-latest.min.js"></script> 
   <script type="text/javascript" >
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
 <form style="width:1000px; margin:0 auto;" name="frmArticle" method="post"  action="${contextPath}"  enctype="multipart/form-data">

    <table class="board_view">
        <caption><img src="${contextPath}/resources/image/house_heart_icon.png" >자유게시판</caption>
            <tr>
                <th>제목</th>
                <td><input type=text value="${article.title }"  name="title"  id="i_title" disabled /></td>
                <th>글번호</th>
                <td><input type="text"  value="${article.articleNO }"  disabled />
    <input type="hidden" name="articleNO" value="${article.articleNO}"  /></td>
            </tr>
            <tr>
                <th>작성자</th>
                <td><input type=text value="${article.id }" name="writer"  disabled /></td>
                <th>등록일자</th>
                <td><input type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled />
</td>
            </tr>
            <tr>
                <th class="text">내용</th>
                <td colspan="3">
                       <textarea   name="content"  id="i_content"  disabled />${article.content }</textarea>
                </td>
            </tr>
            <c:choose> 
	  <c:when test="${not empty article.imageFileName && article.imageFileName!='null' }">
	   	<tr>
		    <th width="150" align="center" bgcolor="#FF9933"  rowspan="2">
		      이미지
		   </th>
		    <td colspan="2">
		     <input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
		    <img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}" id="preview"  /><br>
		   </td>   
		  </tr>  
		   <tr>
		    <td colspan="3">
		       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
		    </td>
		  </tr>  
		 </c:when>
		 <c:otherwise>
		    <tr  id="tr_file_upload" >
				    <th width="150" align="center" bgcolor="#FF9933"  rowspan="2">
				      이미지
				    </th>
				    <td colspan="2">
				      <input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
				    </td>
			    </tr>
			    <tr>
				    <td >
				       <img id="preview"  /><br>
				       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
				    </td>
			  </tr>
		 </c:otherwise>
	 </c:choose>
        <tr id="tr_btn_modify"  align="center"  >
	   <td  >
	       <input type=button value="수정반영하기"   onClick="fn_modify_article(frmArticle)"  >
           <input type=button value="취소"  onClick="backToList(frmArticle)" >
	   </td>   
  </tr>
    
  <tr  id="tr_btn"  >
   <td colspan="4" align="center">
       <c:if test="${member.id == article.id }">
	      <input type=button value="수정하기" onClick="fn_enable(this.form)">
	      <input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
	    </c:if>
	    <input type=button value="리스트로 돌아가기"  onClick="backToList(this.form)">
	     <input type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
   </td>
  </tr>
        </table>
        </form> 
        </div>





  <%-- <form style="width:1000px; margin:0 auto; border:1px solid red;" name="frmArticle" method="post"  action="${contextPath}"  enctype="multipart/form-data">
  <table  border=0  align="center">
  <tr>
   <th width="150" align="center" bgcolor=#FF9933>
      글번호
   </th>
   <td >
    <input type="text"  value="${article.articleNO }"  disabled />
    <input type="hidden" name="articleNO" value="${article.articleNO}"  />
   </td>
  </tr>
  <tr>
    <th width="150" align="center" bgcolor="#FF9933">
      작성자 아이디
   </th>
   <td >
    <input type=text value="${article.id }" name="writer"  disabled />
   </td>
  </tr>
  <tr>
    <th width="150" align="center" bgcolor="#FF9933">
      제목 
   </th>
   <td>
    <input type=text value="${article.title }"  name="title"  id="i_title" disabled />
   </td>   
  </tr>
  <tr>
    <th width="150" align="center" bgcolor="#FF9933">
      내용
   </th>
   <td>
    <textarea rows="20" cols="60"  name="content"  id="i_content"  disabled />${article.content }</textarea>
   </td>  
  </tr>

  <c:choose> 
	  <c:when test="${not empty article.imageFileName && article.imageFileName!='null' }">
	   	<tr>
		    <th width="150" align="center" bgcolor="#FF9933"  rowspan="2">
		      이미지
		   </th>
		    <td>
		     <input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
		    <img src="${contextPath}/download.do?articleNO=${article.articleNO}&imageFileName=${article.imageFileName}" id="preview"  /><br>
		   </td>   
		  </tr>  
		   <tr>
		    <td ></td>
		    <td>
		       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
		    </td>
		  </tr>  
		 </c:when>
		 <c:otherwise>
		    <tr  id="tr_file_upload" >
				    <th width="150" align="center" bgcolor="#FF9933"  rowspan="2">
				      이미지
				    </th>
				    <td>
				      <input  type= "hidden"   name="originalFileName" value="${article.imageFileName }" />
				    </td>
			    </tr>
			    <tr>
				    <td ></td>
				    <td>
				       <img id="preview"  /><br>
				       <input  type="file"  name="imageFileName " id="i_imageFileName"   disabled   onchange="readURL(this);"   />
				    </td>
			  </tr>
		 </c:otherwise>
	 </c:choose>
  <tr>
	   <th width="150" align="center" bgcolor="#FF9933">
	      등록일자
	   </th>
	   <td>
	    <input type=text value="<fmt:formatDate value="${article.writeDate}" />" disabled />
	   </td>   
  </tr>
  <tr   id="tr_btn_modify"  align="center"  >
	   <td colspan="2" >
	       <input type=button value="수정반영하기"   onClick="fn_modify_article(frmArticle)"  >
           <input type=button value="취소"  onClick="backToList(frmArticle)">
	   </td>   
  </tr>
    
  <tr  id="tr_btn"  >
   <td colspan="2" align="center">
       <c:if test="${member.id == article.id }">
	      <input type=button value="수정하기" onClick="fn_enable(this.form)">
	      <input type=button value="삭제하기" onClick="fn_remove_article('${contextPath}/board/removeArticle.do', ${article.articleNO})">
	    </c:if>
	    <input type=button value="리스트로 돌아가기"  onClick="backToList(this.form)">
	     <input type=button value="답글쓰기"  onClick="fn_reply_form('${contextPath}/board/replyForm.do', ${article.articleNO})">
   </td>
  </tr>
 </table> 
 </form> --%>
</body>
</html>