package action;  
  
import entity.*; 
import service.StuService;  
  
import com.opensymphony.xwork2.ActionSupport;  
  
public class UpdateStuAction extends ActionSupport {  
    private Student stu;  
    private StuService stuService;  
    
    public Student getStu() {
		return stu;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public StuService getStuService() {
		return stuService;
	}

	public void setStuService(StuService stuService) {
		this.stuService = stuService;
	}

	@Override  
    public String execute() throws Exception {  
        this.stuService.update(this.stu);  
        return SUCCESS;  
    }  
}  