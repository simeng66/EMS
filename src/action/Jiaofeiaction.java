package action;  
  
import entity.*;  
import service.SusheService;

import com.opensymphony.xwork2.ActionSupport;

import dao.TSusheDao;
import dao.TSusheDaoImpl;  
  
public class Jiaofeiaction extends ActionSupport {
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

	@Override  
    public String execute() throws Exception {
		int jf=this.sushe.getDmoney();
		System.out.println(jf);
		this.sushe=this.susheService.findSusheById(this.sushe.getFangjianhao());
		System.out.println(this.sushe.getFangjianhao());
		
		System.out.println(this.sushe.getDmoney());
		System.out.println(this.sushe.getDmoney().getClass());
        int a=jf+this.sushe.getDmoney();
        this.sushe.setDmoney(a);
        this.susheService.updateSushe(sushe);
        return SUCCESS;  
    }  
}  