<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "human.dto.dto2, human.dao.dao2, java.sql.SQLException" %>

<jsp:useBean id = "dto2" class = "human.dto.dto2" />
<jsp:setProperty name = "dto2" property = "*" />
<jsp:useBean id = "dao" class = "human.dao.dao2" />


<%

request.setCharacterEncoding("UTF-8");
%>

<%
dto2 newDto = null;


try {
	
	newDto = dao.deleteMember(dto2);

} catch (SQLException e) {
	e.printStackTrace();
}

if (newDto != null) {
	
response.sendRedirect("../project/logout.jsp");

} else {
	String msg = "시스템 문제로 회원정보가 정상적으로 변경되지 못했습니다. 다음에 다시 변경해주세요.";
	request.setAttribute("msg", msg);
	request.getRequestDispatcher("/project/update999.jsp").forward(request, response);
}




%>