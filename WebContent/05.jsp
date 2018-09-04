<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>multipart</title>
</head>
<body>
	<h2>multipart request</h2>
	
	<p>
		form 을 통한 요청 발생시에만 가능한 작업으로 , enctype 을 multipart / form-data 로 설정해야될때가 있다.<br/>
		미설정 시는 application/x-www-urlencoded 로 설정이 되있다. <br/>
		이 enctype은 get으로 보내야 될 쿼리스트링 형태를 출력스트림을 이용해서 전송하는 form 형식이다.
	</p>
	<p>
		이 form 전송 방식은 언제 사용되냐면 , 사용자로 부터 파일 데이터를 전달 받아야될때.. <br/>
		설정하는 form 방식이다.
	</p>
	<form action="05handle.jsp" method="post" enctype="multipart/form-data">
		text >> <input type="text" name="param"/><br/>
		file >> <input type="file" name="attach"/><br/>
 		<button type="submit">요청전송</button>
	
	</form>

</body>
</html>