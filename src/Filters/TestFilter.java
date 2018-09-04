package Filters;

import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.DirectoryStream.Filter;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpFilter;
/*
 * 	- javax.servlet.http.HttpFilter(C) 를 extends 걸어서
 * 	- javax.servelt.Filter(I) 를 implments 걸어서
 * 
 * 	
 */
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestFilter extends HttpFilter{

	// 필터가 was에 의해서 생성될때
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("TestFilter.init");
		String ex = filterConfig.getInitParameter("exclude");
		System.out.println("exclude=="+ex);	
	}
	// 필터가 사용자 요청에 의해서 작동되게 할때
	protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		String uri=request.getRequestURI();
		System.out.println("TestFilter.doFilter at "+uri);
		
		String key=request.getParameter("key");
		if (key!=null && key.equals("mock")) {
			chain.doFilter(request,response);	// 다음 필터로 넘기겠다.
			// 더이상작동시킬 필터가 없어서 차단이 안걸리면 ... 해당 타켓페이지가 작동함
		}else {
			//response.sendRedirect(request.getContextPath()+"/index.jsp");
			response.setContentType("test/html;charset=UTF-8");
			PrintWriter out=response.getWriter();
			System.out.println("access denied");
		}
		
	}

	// 필터가 was종료와 함께 소멸될때
	public void destroy() {
		System.out.println("TestFilter.destroy");
	}



}
