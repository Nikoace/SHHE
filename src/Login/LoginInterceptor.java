package Login;


import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;
import org.springframework.mock.web.MockHttpServletRequest;

import java.util.Map;

public class LoginInterceptor implements Interceptor {
    private static final long serialVersionUID = 1593745236481514166L;

    @Override
    public void destroy() {

    }

    @Override
    public void init() {

    }

    @Override
    public String intercept(ActionInvocation actionInvocation) throws Exception {
        ActionContext context = actionInvocation.getInvocationContext ();
        Map<String,Object> session = context.getSession ();
        Object user = session.get ( "username" );
        if (user == null){

        }
    }
}
