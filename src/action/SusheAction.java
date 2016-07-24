package action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import entity.Tsushe;
import service.SusheService;
import service.SusheServiceImpl;

public class SusheAction extends ActionSupport{
	private Tsushe sushe;
	private SusheService susheService;

	public Tsushe getSushe() {
		return sushe;
	}
	public void setSushe(Tsushe sushe) {
		this.sushe = sushe;
	}
	
	public SusheService getSusheService() {
		return susheService;
	}
	public void setSusheService(SusheService susheService) {
		this.susheService = susheService;
	}
	
	public String doCreateSushe() {
		this.susheService.doCreateSushe(sushe);
		return ActionSupport.SUCCESS;
	}  
    public String findAllsushe() {
    	Map request = (Map) ActionContext.getContext().get("request");  
        request.put("list", this.susheService.findAllsushe());
        return "success";
	}  
    public String removeSushe() {
    	susheService.removeSushe(sushe);
    	return "success";
	}  
    public String findSusheById() {
//    	Tsushe request = (Tsushe) ActionContext.getContext().get("request");  
//    	System.out.println(sushe.getFangjianhao());
        this.sushe=this.susheService.findSusheById(sushe.getFangjianhao());
        return "success";
	} 
}
