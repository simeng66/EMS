package dao;

import java.util.List;

import entity.Student;

public interface StudentDao {
	 public void doCreateStu(Student stu);  
     public List<Student> findAllStu();  
     public void removeStu(Student stu);  
     public void updateStu(Student stu);  
     public Student findStuById(int id);  
     public Student findStuByxh(int id);
     public Student findStuByLoginName(String name); 
}
