package action;  
  
import java.util.Map;  
  
import service.StuService;  
  
import com.opensymphony.xwork2.ActionContext;  
import com.opensymphony.xwork2.ActionSupport;  
  
public class ListStuAction extends ActionSupport {  
    private StuService stuService;  
        
    public StuService getStuService() {
		return stuService;
	}

	public void setStuService(StuService stuService) {
		this.stuService = stuService;
	}

	@SuppressWarnings("unchecked")  
    @Override  
    public String execute() throws Exception {  
          
        Map request = (Map) ActionContext.getContext().get("request");  
          
        request.put("list", this.stuService.findAllStu());  
        return SUCCESS;  
    }  
}  
