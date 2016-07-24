package dao;

import java.util.List;

import entity.Tadmin;
import entity.Tsushe;

public interface TSusheDao {
	 public void doCreateStu(Tsushe sushe);  
     public List<Tsushe> findAllsushe();  
     public void removeStu(Tsushe sushe);  
     public Tsushe findStuById(int id);
     public void updateSushe(Tsushe sushe);
     public void changePw(Tadmin admin);
     public Tadmin findAdminByid();
}
