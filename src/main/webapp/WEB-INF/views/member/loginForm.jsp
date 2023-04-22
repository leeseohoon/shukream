<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"
    isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("utf-8");
   String contextPath = request.getContextPath();%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<link rel="stylesheet" href="<%=contextPath%>/resources/css/member/loginForm.css">

<style>
#footer{
    top: 380px;
    position: relative;
}
</style>

<c:if test='${not empty message }'>
<script>
window.onload=function()
{
  result();
}

function result(){
   alert("이메일 또는 비밀번호가 틀립니다. 다시 로그인해주세요");
}
</script>
</c:if>
</head>
<body>
	<DIV id="detail_table">
	<form action="<%=contextPath%>/member/login.do" method="post" style="display: inline-block;">
		<H3>로그인</H3> <br>
		<TABLE class="signTable">
			<TBODY>
				<TR class="dot_line">
					<TD class="fixed_join">이메일</TD>
					<TD><input name="user_email" type="text" size="20" placeholder="이메일을 입력해주세요" id="logOn"/></TD>
				</TR>
				<TR class="solid_line">
					<TD class="fixed_join">비밀번호</TD>
					<TD><input name="user_pw" type="password" size="20" placeholder="비밀번호를 입력해주세요" id="logOn"/></TD>
				</TR>
			</TBODY>
		</TABLE>
		<br>
		<INPUT id="sub"	type="submit" value="로그인"> 
		<INPUT id="re" type="reset" value="다시입력">
		<br>
		<div class="find">
		   <a href="<%=contextPath%>/member/addMemberForm.do">[회원가입]</a>
		</div>			   
	</form>
	</DIV>	
</body>
</html>