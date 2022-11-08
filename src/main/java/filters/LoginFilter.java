package filters;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class LoginFilter implements Filter {

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        /**
         * 1 неавтор придет на логин - проходит
         * 2 неавтор придет на другую станицу но должен придти на  логин
         * 3 авториз придет на логин должен попасть на главн
         * 4 авториз придет на другую станицу - проходит
         */

        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;
        Integer isLogin = (Integer) req.getSession().getAttribute("isLogin");
        String requestURI = req.getRequestURI();
//1 2

        if (isLogin != null && isLogin == 1 && requestURI.endsWith("/login") ){
            resp.sendRedirect("/");
            return;
        }
        if (isLogin != null && isLogin == 1 &&  !requestURI.endsWith("/login") ){
            filterChain.doFilter(servletRequest, servletResponse);
        }
//3
        if (isLogin == null  && requestURI.endsWith("/login")){
            filterChain.doFilter(servletRequest, servletResponse);

        }
 //4
        if (isLogin == null && !requestURI.endsWith("/login")){
            resp.sendRedirect("/login");
        }
        return;

    }

    @Override
    public void destroy() {

    }
}
