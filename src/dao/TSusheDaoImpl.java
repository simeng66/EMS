package dao;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Tadmin;
import entity.Tsushe;

public class TSusheDaoImpl extends HibernateDaoSupport implements TSusheDao {

	@Override
	public void doCreateStu(Tsushe sushe) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(sushe);
	}

	@Override
	public List<Tsushe> findAllsushe() {
		// TODO Auto-generated method stub
		String hql = "from Tsushe u order by u.fangjianhao asc";  
        List<Tsushe> list = this.getHibernateTemplate().find(hql);  
        return list;
	}

	@Override
	public void removeStu(Tsushe sushe) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().delete(sushe);
	}

	@Override
	public Tsushe findStuById(int id) {
		// TODO Auto-generated method stub
		Tsushe su = null;
		su = (Tsushe) this.getHibernateTemplate().get(Tsushe.class, id);
		return su;
	}
	public void updateSushe(Tsushe sushe) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(sushe);  
	}
	public void changePw(Tadmin admin){
		this.getHibernateTemplate().update(admin);
	}
	public Tadmin findAdminByid(){
		return (Tadmin) this.getHibernateTemplate().get(Tadmin.class, 0);
	}
	

}
