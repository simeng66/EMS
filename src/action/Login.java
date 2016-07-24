package action;

import com.opensymphony.xwork2.ActionSupport;
import entity.Tadmin;
import service.SusheService;

public class Login extends ActionSupport {
	private Tadmin admin;
	private SusheService susheService;
	

	public Tadmin getAdmin() {
		return admin;
	}


	public void setAdmin(Tadmin admin) {
		this.admin = admin;
	}


	public SusheService getSusheService() {
		return susheService;
	}


	public void setSusheService(SusheService susheService) {
		this.susheService = susheService;
	}


	public String execute() throws Exception {
		String pwY=this.admin.getUserPw();

		this.admin=this.susheService.findAdminByid();
		System.out.println("serviceip");
		System.out.println(admin.getUserPw());
		String pwR=admin.getUserPw();
		if(this.admin.getUserName().equals("root")&&pwY.equals(pwR)){
			
			return SUCCESS;
		}
		else{
			return INPUT;			
		}        
    }  
}
