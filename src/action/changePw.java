package action;  
  
import entity.Tadmin;  
import service.StuService;
import service.SusheService;

import com.opensymphony.xwork2.ActionSupport;  
  
public class changePw extends ActionSupport {  
   private SusheService susheService;
   private Tadmin admin;
   
	public SusheService getSusheService() {
		return susheService;
	}


	public void setSusheService(SusheService susheService) {
		this.susheService = susheService;
	}


	public Tadmin getAdmin() {
		return admin;
	}


public void setAdmin(Tadmin admin) {
	this.admin = admin;
}


	@Override  
    public String execute() throws Exception {
		if(this.admin.getUserName().equals(this.admin.getUserPw())){
			this.admin.setUserId(0);
			this.admin.setUserName("root");			
	        this.susheService.changePw(admin);
	        return SUCCESS;		
		}
		else{
			return INPUT;
		}
		  
    }  
}  