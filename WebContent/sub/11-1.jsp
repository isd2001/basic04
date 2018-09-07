<%-- 
	/sub/11-1.jsp
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Cookie c= new Cookie("fast","notuse");
	c.setMaxAge(60*60);
	// 혹시 만들어지는 경로가 WebContent 바로 아래가 아니라,
	// 하위 경로에서 만들어지는 거라면 , 그 경로쪽에서만 사용되는 쿠키가 되버린다.
	// 보통 이렇게 사용하지않는다 , 만약 사용하게 되면 쿠키를 활용하기 힘들기 때문에
	
	c.setPath(application.getContextPath());	// 쿠기path를 변경가능
	
	response.addCookie(c);

%>
쿠키 드셈!