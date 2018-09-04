<%@page import="java.io.File"%>
<%@ page import="com.oreilly.servlet.multipart.Part"%>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	// argr [0] = request  / [1] = maxSize(byte) / [2] = buffer use / [3] = limit / [4] = encoding
	// post의 기본 encoding 과는 별도로 encoding 처리가 필요함.
	MultipartParser parser = new MultipartParser(request,1024*1024*100,true,true,"UTF-8");
	
	while(true){
		Part part=parser.readNextPart();
		out.println(part+"<br/>");
		if(part==null){
			break;
		}else{
			String name=part.getName();
			boolean b1=part.isFile();
			boolean b2=part.isParam();
			out.println(name+" / "+b1+" / "+b2+"<br/>");
			if(part.isFile()){
				FilePart file = (FilePart)part;
				String fn=file.getFileName();
				String fpt=file.getFilePath();			// 기본 temp 저장경로를 설정 안하면 , 파일명 똑같이 나옴 .
				String fct=file.getContentType();
				out.println("<h3>"+fn+"~"+fpt+"~"+fct+"~"+"</h3>");
				// 업로드를 진행해야 된다면 .
				// 직접 IO 작업을 하거나 writeTo , 
				// file.getInputStream();
				File dest = new File("C:\\test");
				file.writeTo(dest);
				
				
			}else if(part.isParam()){
				ParamPart param= (ParamPart)part;
				String na=param.getName();
				String val=param.getStringValue();
				out.println("<h3>"+na+"="+val+"</h3>");
			}else{
				
			}
		}
		
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	

</body>
</html>