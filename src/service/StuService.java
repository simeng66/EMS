package service;

import java.util.List;

import entity.Student;

public interface StuService {
	public void doCreateStu(Student stu);  
    public List<Student> findAllStu();  
    public void delete(Student stu);  
    public void update(Student stu);  
    public Student findStuById(int id);
    public Student findStuByxh(int id);
    public Student findStuByLoginName(String name); 
    
}
