<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	

	Cookie[] re = request.getCookies();
	String value=null;

	if(re!=null){
		for(int i=0;i<re.length;i++){
			if(re[i].getName().equals("season")){
				value=re[i].getValue();
				out.println("당신이 좋아하는 계절은 "+value+" 이군요!!");
			}
		}
	}else{
		out.println("어쩌라고...");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 test_result</title>
</head>
<body>
	<p>
		
	</p>

</body>
</html>