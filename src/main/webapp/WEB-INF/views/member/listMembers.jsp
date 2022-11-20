<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    


<html>
<head>
<meta charset=UTF-8">
<title>회원 정보 출력창</title>
<style>
th{font-size:18px;height:50px; line-height:50px; background-color:#6D9886; color: #F7F6DC; border:none}
tr{height:45px;border:3px solid #D6E4E5; text-align:center; line-height:40px;}
td, th{text-align:center; }
</style>
<script>
    function test() {
        alert("회원정보가 삭제되었습니다.");
    }
</script>
</head>
<body>
<div style="width:1920px; margin:20px auto;">
<table style="width:1000px ; margin:0 auto; border:1px solid orange; ">
    <tr align="center"   bgcolor="lightgreen">
      <th width="15%;">아이디</th>
      <th width="15%;">비밀번호</th>
      <th width="10%;">이름</th>
      <th width="20%;">이메일</th>
      <th width="20%;">가입일</th>
      <th width="20%;">삭제</th>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.joinDate}</td>
      <td><a href="${contextPath}/member/removeMember.do?id=${member.id }" onclick="test()">삭제하기</a></td>
    </tr>
  </c:forEach>   
<%-- <a  href="${contextPath}/member/memberForm.do"><h1 style="text-align:center">회원가입</h1></a> --%>
</table>

</body>
</html>
