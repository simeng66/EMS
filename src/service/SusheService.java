package service;

import java.util.List;

import entity.Tadmin;
import entity.Tsushe;

public interface SusheService {
    public List<Tsushe> findAllsushe();  
    public void removeSushe(Tsushe sushe);  
    public Tsushe findSusheById(int id);
	public void doCreateSushe(Tsushe sushe);
	public void updateSushe(Tsushe sushe);
	public void changePw(Tadmin admin);
	public Tadmin findAdminByid();
}
