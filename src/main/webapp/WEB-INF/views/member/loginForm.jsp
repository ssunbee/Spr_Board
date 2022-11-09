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
<title>로그인창</title>
<link href="${contextPath}/resources/css/reset.css" rel="stylesheet"/> 	
<link href="${contextPath}/resources/css/login.css" rel="stylesheet"/> 	
<c:choose>
	<c:when test="${result=='loginFailed' }">
	  <script>
	    window.onload=function(){
	      alert("아이디나 비밀번호가 틀립니다.다시 로그인 하세요!");
	    }
	  </script>
	</c:when>
</c:choose>  
</head>


<body>

<div id="login_wrap">
        <form name="frmLogin" method="post"  action="${contextPath}/member/login.do">
            <div class="login_l">
                <h2>회원 로그인</h2>
                <p>서울우유에 오신 것을 환영합니다.<br>
                    회원 가입하신 후 다양한 서비스를 경험해보세요.</p>
            </div>

            <div class="login_r">
                <div class="logright">
                    <p class="u_id"><input type="text" name="id" placeholder="아이디 입력"></p>
                    <p class="u_pwd"><input type="password" name="pwd" placeholder="비밀번호 입력"></p>
                </div>
                <p class="login"><input type="submit" value="로그인"></p>

                <div id="logbtn">
                    <input type="checkbox" name="save" value="아이디저장" id="chk"><label for="chk">아이디저장</label>
                        <div><button id="FindId">아이디찾기</button>
                        <button id="Findpwd">비밀번호찾기</button></div>
                </div>
                 <div class="joinbtn">
                    <a href="${contextPath}/member/memberForm.do">
                    <strong>아직도 회원이 아니세요?</strong>
                    <span>다양한 특가 상품 및 이벤트 소식을 받으실 수 있습니다.</span>
                </a>
                </div>
            </div>

            <!--login_l 회원로그인-->
        </form>
    </div>

<%-- <form name="frmLogin" method="post"  action="${contextPath}/member/login.do">
   <table border="1"  width="80%" align="center" >
      <tr align="center">
         <td>아이디</td>
         <td>비밀번호</td>
      </tr>
      <tr align="center">
         <td>
	    <input type="text" name="id" value="" size="20">
	 </td>
         <td>
	    <input type="password" name="pwd" value="" size="20">
	 </td>
      </tr>
      <tr align="center">
         <td colspan="2">
            <input type="submit" value="로그인" > 
            <input type="reset"  value="다시입력" > 
         </td>
      </tr>
   </table>
</form> --%>
</body>
</html>
