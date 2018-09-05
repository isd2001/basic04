<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="java.util.*" %>
<%
	SampleDAO dao = new SampleDAO();
	
	Map p = new HashMap();
	p.put("serial", "03eg45w");
	p.put("player", "김기현");
	p.put("tried", "2");
	p.put("elapsed", "3.15");
	int r = dao.addBaseResult(p);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>mybatis</title>
</head>
<body>
	<h2>마이바티스를 통한 작업</h2>
	<p>
		insert 결과 : <%=r %>
	</p>
</body>
</html>