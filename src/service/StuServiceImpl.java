package service;

import java.util.List;

import dao.StudentDao;
import entity.Student;

public class StuServiceImpl implements StuService {
	private StudentDao dao;  
    
    public StudentDao getDao() {  
        return dao;  
    }  
  
    public void setDao(StudentDao dao) {  
        this.dao = dao;  
    }  
  
    public void doCreateStu(Student Stu) {  
        this.dao.doCreateStu(Stu);  
    }  
  
    public List<Student> findAllStu() {  
        return this.dao.findAllStu();  
    }  
  
    public void delete(Student Stu) {  
        this.dao.removeStu(Stu);  
    }  
  
    public void update(Student Stu) {  
        this.dao.updateStu(Stu);  
    }  
  
    public Student findStuById(int id) {  
        return this.dao.findStuById(id);  
    }
    public Student findStuByxh(int id){
    	return this.dao.findStuByxh(id); 
    }
    public Student findStuByLoginName(String name){
    	return this.dao.findStuByLoginName(name); 
    }
	
}
