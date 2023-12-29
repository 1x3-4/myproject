<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import = "human.dto.dto2, human.dao.dao2, java.sql.SQLException" %>
<script>
	
	alert("로그아웃이 완료되었습니다.");
	location.href = "../project/main.jsp"
	</script>
<%	
		session.invalidate();
//		메인 페이지로 이동
		%>