<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter</title>
</head>
<body>
	<h2>Filter</h2>
	<p>
		구현시킬 웹앱에 Filter라는걸 설정해서 사용 할수 있다.
		ServletRequestListerner 랑 작동시점은 비슷한데 , 다른점이 있다면..
		적용 시킬 경로를 설정할 수 있다는 것과 , 요청이 들어가는걸 차단할수 있다는 점이 리스너 와의 차이다.	
	</p>
	<p>
		Filter 사용의 대표적인 예가 , 미인증시 서비스 차단 구현 기능이다.
	
	</p>

</body>
</html>