package handlers;

import javax.servlet.ServletRequest;
import javax.servlet.ServletRequestAttributeEvent;
import javax.servlet.ServletRequestAttributeListener;
import javax.servlet.ServletRequestEvent;
import javax.servlet.ServletRequestListener;
import javax.servlet.http.HttpServletRequest;

/*
 * ServletRequest �� ���õ� Event Listener..
 * 	- ServletRequestListener
 * 	- ServletRequestAttributeListener
 */
public class RequestHandler implements ServletRequestListener, ServletRequestAttributeListener {
	// ServletRequestListener's 
	@Override
	public void requestInitialized(ServletRequestEvent sre) {
		// ��û�� ���ͼ� JSP or Servlet�� �۵� ��
		ServletRequest req = sre.getServletRequest();
		System.out.println("[REQUEST] request occured .. by "+req.getRemoteAddr());
		// requestURI , queryString�� �̾Ƽ� ����� ���ѵѲ���. (DB insert�� �Ͼ���� �ְ�..)
		// ������ Ÿ���� ���� ���� Ÿ������ ������ �űԱ���� �ȶ�.
		HttpServletRequest request = (HttpServletRequest)req;

		String uri = request.getRequestURI();
		String query = request.getQueryString();
		
		System.out.println("[REQUEST] at " + uri + (query!=null ? "?"+query : ""));
	}
	@Override
	public void requestDestroyed(ServletRequestEvent sre) {
		//  JSP or Servlet�� �۵� �ؼ� ������ ���� ��
		System.out.println("[REQUEST] response sended..");
	}
	// ServletRequestAttributeListener's 
	// ������ �غ��� �ʾ�����, request ���� attribute �۾��� �� �� �ִ�.
	// ���亸������������ ������ ��. ���亸���� �����. �� �̷� 1ȸ�� attribute�� �ϴ°�?
	// MVC ���踦 �ϰԵǸ� ������ �˰� ��. - ������ request�� attribute �����ϴٴ°� ���� ��.
	@Override
	public void attributeAdded(ServletRequestAttributeEvent srae) {
	
	}
	@Override
	public void attributeReplaced(ServletRequestAttributeEvent srae) {
	
	}
	@Override
	public void attributeRemoved(ServletRequestAttributeEvent srae) {
	
	}

}
