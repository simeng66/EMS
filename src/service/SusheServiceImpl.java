package service;

import java.util.List;

import dao.TSusheDao;
import dao.TSusheDaoImpl;
import entity.Tadmin;
import entity.Tsushe;

public class SusheServiceImpl implements SusheService {
	private TSusheDao susheDao;
	
	public TSusheDao getSusheDao() {
		return susheDao;
	}

	public void setSusheDao(TSusheDao susheDao) {
		this.susheDao = susheDao;
	}

	@Override
	public void doCreateSushe(Tsushe sushe) {
		// TODO Auto-generated method stub
		this.susheDao.doCreateStu(sushe);
	}

	@Override
	public List<Tsushe> findAllsushe() {
		// TODO Auto-generated method stub
		return this.susheDao.findAllsushe();
	}
	@Override
	public void removeSushe(Tsushe sushe) {
		// TODO Auto-generated method stub
		this.susheDao.removeStu(sushe);
	}

	@Override
	public Tsushe findSusheById(int id) {
		// TODO Auto-generated method stub
		System.out.println("service");
		return this.susheDao.findStuById(id);
	}
	public void updateSushe(Tsushe sushe){
		this.susheDao.updateSushe(sushe);
	}
	public void changePw(Tadmin admin){
		this.susheDao.changePw(admin);
	}
	public Tadmin findAdminByid(){
		System.out.println("serviceip");
		return this.susheDao.findAdminByid();
	}
}
