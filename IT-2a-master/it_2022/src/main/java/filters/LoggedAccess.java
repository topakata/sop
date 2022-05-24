package filters;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import models.User;

@WebFilter(urlPatterns= {"/registration","/login"})
public class LoggedAccess extends HttpFilter {
       

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse res = (HttpServletResponse) response;

		
		HttpSession session = req.getSession(false);
		
		User sessionUser = (session!=null)?(User)session.getAttribute("loggedUser"):null;
		
		if(sessionUser!=null) {
		res.sendRedirect("user?id="+sessionUser.getId());
		} else {
		
		chain.doFilter(request, response); 
		}
	}



}
