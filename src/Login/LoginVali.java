package Login;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;

import java.util.Map;

public class LoginVali implements Action {
    private String username;
    private String password;
    private int type;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    // TODO: 2018/4/2 Change Database to getUserName
    public String execute() throws Exception {
        if (username.equals ( "niko" ) && password.equals ( "123" )) {
            if (type == 0){
                Map<String,Object> session = ActionContext.getContext ().getSession ();
                session.put ( "username",username );
                session.put ( "type",type );
                return "admin";
            }else if (type == 1){
                Map<String,Object> session = ActionContext.getContext ().getSession ();
                session.put ( "username",username );
                session.put ( "type",type );
                return "normal";
            }else {
                return Action.ERROR;
            }
        }else return Action.ERROR;  
    }
}