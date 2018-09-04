<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%   
	// multipart 형 요청은 클라이언트 측으로 파일이 첨부된 요청을 전달하고자 할때
	// 설정해주면 되고 , 이 방식의 요청은 처리방식이 많이 다르다.
	// getParameter로 데이터가 확보가 되지 않습니다.
	// 전달받은 내용을 직접 분석해서 파일데이터 부분과 그렇지 않은 데이터부분을
	// 직접 추출해서 처리해야 된다.
	
	// was의 기본제공되는건 아니지만 , 라이브러리를 사용하면
	// 이 multipart 형 요청에 들어가는 , 파일부분과 그렇지 않은 부분을 
	// 쉽게 추출할수 있다.
	
	// multipart 분석추출 라이브러리가 여러종류가 있다.
	// cos library(d), commons io library 이거 둘다 살펴 보자.
	// www.servelts.com
	String type= request.getContentType();
	String param=request.getParameter("param"); 
	
	int len=request.getContentLength();			// post방식 으로만 가능 
	
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>05handle.jsp</h2>
	<p>
		type = <%=type %>  <br/>
		param = <%=param %><br/>
		len = <%=len %><br/>
	</p>
</body>
</html>