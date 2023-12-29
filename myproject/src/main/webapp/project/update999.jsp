<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="human.dto.dto2"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JSP 업데이트</title>
<script type="text/javascript" src="../resources/js/update.js"></script>
<link rel="stylesheet" href="../project/join2.css">
<%
session = request.getSession();
dto2 dto = (dto2) session.getAttribute("member");
%>
</head>
<body>
	<div id="wrap">



		<div id="container">
			<div id="logo">
				<img src="image/이벤트.png" alt="">
			</div>
			<form name="frm_update" method="post" action="update_process999.jsp">
				<input type="hidden" name="m_idx" value="<%=dto.getM_idx()%>">
				<table>
					<tr>
						<td>아이디<input type="text" name="id" id="id"
							value="<%=dto.getId()%>" disabled>
						</td>
					</tr>
					<tr>
						<td>비밀번호<input type="text" name="pw" id="pw"
							value="<%=dto.getPw()%>"></td>
					</tr>
					<tr>
						<td>이름<input type="text" name="name1" id="name1"
							value="<%=dto.getName1()%>"></td>
					</tr>
					<tr>
						<td>이메일<input type="text" name="phone" id="phone"
							value="<%=dto.getPhone()%>"></td>
					</tr>
					<tr>
						<td>핸드폰번호<input type="email" name="email" id="email"
							value="<%=dto.getEmail()%>"></td>
					</tr>


					<tr>
						<%
						String msg = (String) request.getAttribute("msg");
						if (msg != null) {
							out.println("<span>" + msg + "</span>");
						}
						%>
					</tr>
				</table>
				<footer>
					<div class=btn9box>
						<tr>
							<td>
								<button type="submit" name="submit_btn" class="btn9"
									action="update_process2.jsp">
									수정
									<button class="btn9" src="#">취소</button>
						</tr>
					</div>
				
			</form>
		</div>
		<div class=form2btn>
			<form method="post" action="delete_process.jsp">
				<input type="hidden" name="m_idx" value="<%=dto.getM_idx()%>">
				<button type="submit" class="btn10" >탈퇴</button>
			</form>
		</div>
		</footer>
	</div>
</body>
</html>