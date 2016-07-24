package dao;
import java.util.Iterator;
import java.util.List;
import entity.*;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import entity.Student;
import entity.Tsushe;
public class StudentDaoImpl extends HibernateDaoSupport implements StudentDao{
	public void doCreateStu(Student stu) {  
        this.getHibernateTemplate().save(stu);  
    }  
  
    @SuppressWarnings("unchecked")  
    public List<Student> findAllStu() {  
        String hql = "from Student u order by u.stuXuehao asc";  
        List<Student> list = this.getHibernateTemplate().find(hql);  
        System.out.println(this.getHibernateTemplate());
        /*
         * test
         */
//        List<Tsushe> ls = this.getHibernateTemplate().find("from Tsushe u");
//        for(Iterator<Tsushe> it = ls.iterator() ; it.hasNext();){
//        	System.out.println("2016Äê6ÔÂ27ÈÕ17:05:09 =="+it.next().getYongdian());
//        }
        return list;  
    }  
  
    public void removeStu(Student stu) {  
        this.getHibernateTemplate().delete(stu);  
    }  
  
    public void updateStu(Student stu) {  
        this.getHibernateTemplate().update(stu);  
    }  
  
    public Student findStuById(int id) {  
    	Student stu = null;  
        stu = (Student) this.getHibernateTemplate().get(Student.class, id);  
        return stu;  
    }
    public Student findStuByxh(int xh) {
    	List<Student> list = this.getHibernateTemplate().find("from Student u where u.stuXuehao=?", xh); 
    	return list.get(0);
    }
    public Student findStuByLoginName(String name){
    	List<Student> list = this.getHibernateTemplate().find("from Student u where u.loginName=?", name); 
    	return list.get(0);
    }
}
