package handlers;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;

public class SessionSupport implements HttpSessionAttributeListener {
	@Override
	public void attributeAdded(HttpSessionBindingEvent se) {
		String name = se.getName();
		HttpSession session = se.getSession();
		if(name.equals("game")) {
			String value = (String)se.getValue();
			session.setAttribute("cnt", 1);
			switch(value) {
			case "updown":
				session.setAttribute("min", 1);
				session.setAttribute("max", 200);
				break;
			case "base":
				session.setAttribute("target", 714);
				session.setAttribute("history", new ArrayList() );
			}
		}
	}
	@Override
	public void attributeReplaced(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeReplaced(se);
	}
	@Override
	public void attributeRemoved(HttpSessionBindingEvent se) {
		// TODO Auto-generated method stub
		HttpSessionAttributeListener.super.attributeRemoved(se);
	}

}
