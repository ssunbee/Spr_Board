<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  /> 
<%
  request.setCharacterEncoding("UTF-8");
%> 

<head>
<meta charset="UTF-8">
<title>글쓰기창</title>
<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">
   function readURL(input) {
      if (input.files && input.files[0]) {
	      var reader = new FileReader();
	      reader.onload = function (e) {
	        $('#preview').attr('src', e.target.result);
          }
         reader.readAsDataURL(input.files[0]);
      }
  }  
  function backToList(obj){
    obj.action="${contextPath}/board/listArticles.do";
    obj.submit();
  }
  
  var cnt=1;
  function fn_addFile(){
	  $("#d_file").append("<br>"+"<input type='file' name='file"+cnt+"' />");
	  cnt++;
  }  

</script>
 <title>글쓰기창</title>
  <style>
        input{border:none;}
        table{border-collapse: collapse;}
        tr ,td{border: 1px solid;}
        textarea:focus { outline:none; }
        input:focus { outline:none; }
        textarea{ resize: none; border: none;}
    </style>
 
</head>
<body>
<div style="width:600px ; margin:0 auto; ">
         <h1 style="text-align: center">글쓰기</h1>
         <form name="articleForm" method="post"
             action="${contextPath}/board/addNewArticle.do"
             enctype="multipart/form-data">
             <table >
                 <tr>
                     <td style="background-color: #CDF0EA" >작성자</td>
                     <td td colspan="2"><input type="text" size="20"
                         maxlength="100" value="${member.name }" readonly /></td>
                 </tr>
                 <tr>
                     <td style="background-color: #CDF0EA" >글제목:</td>
                     <td colspan="2"><input type="text" size="67" maxlength="500"
                         name="title"  /></td>
                 </tr>
                 <tr>
                     <td valign="top" style="background-color: #CDF0EA"><br>글내용:</td>
                     <td colspan="2"><textarea name="content" rows="10" cols="65"
                             maxlength="4000" style="outline: none;"></textarea></td>
                 </tr>
                 <tr>
                     <td style="background-color: #CDF0EA">이미지파일 첨부:</td>
                     <td><input type="file" name="imageFileName"
                         onchange="readURL(this);" />
                     <td><img id="preview" src="#" width=200 height=200 /></td>
     
                 </tr>
               
             </table> 
             <div style="width: 100%;  text-align:center; margin-top: 40px;">
             <input type="submit" value="글쓰기"  style="width:100px; height:30px;  cursor: pointer; background-color: #ECC5FB "/> 
                        <input type=button value="목록보기" onClick="backToList(this.form)"  style="width:100px; height:30px;  cursor: pointer; background-color: #ECC5FB; "/></td>
              </div>
         </form>
         </div>
</body>
</html>
