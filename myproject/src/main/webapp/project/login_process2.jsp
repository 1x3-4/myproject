<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "human.dto.dto2, human.dao.dao2, java.sql.SQLException" %>
<%
request.setCharacterEncoding("UTF-8");

String id = request.getParameter("id");
String pw = request.getParameter("pw");

dto2 dto = null;
dao2 dao = new dao2();
try {
	dto = dao.login(id, pw);
} catch (SQLException e) {
	e.printStackTrace();
}

if (dto != null) {// 로그인 성공 %>
<script>
	
	alert("로그인이 완료되었습니다.");
	location.href = "../project/headermain.jsp"
	</script>
	<%	
	session.setAttribute("member", dto);
	

	// 메인페이지로 이동    // sendRedirect = 재요청
	//response.sendRedirect("../project/main.jsp");

		
} else {// 로그인 실패%>
		
<script>
	
	alert("아이디나 비밀번호를 다시 입력해주세요.");
	location.href = "../project/login.jsp"
	</script>
	<%	
	String msg = "아이디나 비밀번호가 일치하지 않습니다.";
	
	request.setAttribute("msg", msg);
	
	
	/* pageContext.forward("../project/login.jsp"); */
	
	
	
}	%>

