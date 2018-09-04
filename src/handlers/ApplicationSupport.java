package handlers;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
/*
 * ServletContextAttributeListener
 * 
 * 	application �� C/U/D �۾��� �Ͼ�� ó���� �ϵ��� ���� �����ϴ�.
 * 
 */
public class ApplicationSupport implements ServletContextAttributeListener {

	@Override
	public void attributeAdded(ServletContextAttributeEvent scae) {
		String name = scae.getName();	// attribute�� ���� �̸�.
		Object value = scae.getValue();	// ��ϵ� ���
		ServletContext ctx = scae.getServletContext();
		System.out.println("[SERVER] ServletContext.attributeAdded.. "+name);
	}

	@Override
	public void attributeReplaced(ServletContextAttributeEvent scae) {
		String name = scae.getName();	//
		System.out.println("[SERVER] ServletContext.attributeReplaced.. "+name);
		Object value = scae.getValue();	// ��ü�Ǳ� �� ���� ���
		if(name.equals("latest")) {
			String old = (String)value;	
			ServletContext ctx = scae.getServletContext();
			String neo = (String)ctx.getAttribute("latest");
			System.out.println("[SERVER] lastet replaced .." +old +"��"+neo);
		}
	}

	@Override
	public void attributeRemoved(ServletContextAttributeEvent scae) {
		String name = scae.getName();	// ������ ���
		System.out.println("[SERVER] ServletContext.attributeRemoved.. "+name);
	}

}
