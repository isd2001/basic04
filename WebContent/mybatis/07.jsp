<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="beans.*" %>
<%@ page import="java.util.*" %>
<%
	SampleDAO dao = new SampleDAO();
	List<Map> li=dao.getAllResult();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center;">
	<h2>결과 목록들</h2>
	<% if(li==null || li.size()==0){%>
		현재 등록된 데이터가 없습니다.
	<%}else{
		for(int i=0;i<li.size();i++){
			Map map=li.get(i);
			String s= (String)map.get("SERIAL");
			String p= (String)map.get("PLAYER");
			Number t= (Number)map.get("TRIED");
				int it=t.intValue();
			Number e= (Number)map.get("ELAPSED");
				double de=e.doubleValue();
			Date d = (Date)map.get("LOGDATE");
			%>
			-> # <%=s %> , <b><%=p %></b>
			<%=t %>(<%=e %>) / log > <%=d %><br/>
			
			<%
		}
	}
%>
</body>
</html>