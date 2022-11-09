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
</head>
<body>
<div style="width:1920px; margin:0 auto;">
<p style="width:100%; height:300px; background-color:pink;">서울우유 회원❤⭐❤⭐<p>
<table style="width:600px ; margin:0 auto; border:1px solid orange; ">
    <tr align="center"   bgcolor="lightgreen">
      <th><b>아이디</b></th>
      <th><b>비밀번호</b></th>
      <th><b>이름</b></th>
      <th><b>이메일</b></th>
      <th><b>가입일</b></th>
      <th><b>삭제</b></th>
   </tr>
   
 <c:forEach var="member" items="${membersList}" >     
   <tr align="center">
      <td>${member.id}</td>
      <td>${member.pwd}</td>
      <td>${member.name}</td>
      <td>${member.email}</td>
      <td>${member.joinDate}</td>
      <td><a href="${contextPath}/member/removeMember.do?id=${member.id }">삭제하기</a></td>
    </tr>
  </c:forEach>   
<%-- <a  href="${contextPath}/member/memberForm.do"><h1 style="text-align:center">회원가입</h1></a> --%>
</table>

</body>
</html>
