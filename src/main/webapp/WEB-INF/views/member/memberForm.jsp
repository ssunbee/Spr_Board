<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />
<%
   request.setCharacterEncoding("UTF-8");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입창</title>
<link rel="stylesheet" href="${contextPath}/resources/css/reset.css">
<link rel="stylesheet" href="${contextPath}/resources/css/join2.css">
</head>
<body>
<div id="join_container">
            <h1>회원가입</h1>
            <form method="post" action="${contextPath}/member/addMember.do">
                <fieldset class="join1">
                    <legend>회원정보 입력</legend>
                    <p><label for="u_name">성명&#40;필수&#41;</label>
                    <input type="text" id="u_name" name="name" autocomplete="off" required>
                    <span>성명을 입력해 주세요.</span></p>

                    <p><label for="u_email">이메일&#40;필수&#41;</label>
                      <p class="con1"><input type="email" id="u_email"  name="email" autocomplete="off" required>
                      </p>
                    </p>
                    
					<p><label for="u_id">아이디&#40;필수&#41;</label><br><input type="text" id="u_id"  name="id" autocomplete="off" required><span>아이디를 입력해 주세요.</span></p>
                    <p id="u_pwd"><label for="u_pwd">비밀번호(숫자, 영문, 특수문자 조합 8~15자리)</label></p>
                    <p><input type="password"  id="u_pwd" name="pwd"autocomplete="off" required></p>

                    <p><label for="u_pwd2">비밀번호 확인</label><input type="password" id="u_pwd2" autocomplete="off" required><span>비밀번호를 확인해 주세요.</span></p>
                </fieldset>
                <p class="btn">
                    <input type="submit" value="회원가입하기">
                    <input type="reset" value="다시작성">
                </p>
            </form>
        </div>
       </body>
</html>
       
        

<%-- 
	  <form method="post"   action="${contextPath}/member/addMember.do">
	<h1  class="text_center">회원 가입창</h1>
	<table  align="center">
	   <tr>
	      <td width="200"><p align="right">아이디</td>
	      <td width="400"><input type="text" name="id"></td>
	   </tr>
	   <tr>
	      <td width="200"><p align="right">비밀번호</td>
	      <td width="400"><input type="password" name="pwd"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이름</td>
	       <td width="400"><p><input type="text" name="name"></td>
	    </tr>
	    <tr>
	       <td width="200"><p align="right">이메일</td>
	       <td width="400"><p><input type="text" name="email"></td>
	    </tr>
	    <tr>
	       <td width="200"><p>&nbsp;</p></td>
	       <td width="400"><input type="submit" value="가입하기"><input type="reset" value="다시입력"></td>
	    </tr>
	</table>
	</form>
</body>
</html> --%>
