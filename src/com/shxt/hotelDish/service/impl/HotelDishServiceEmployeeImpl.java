package com.shxt.hotelDish.service.impl;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shxt.hotelDish.dao.impl.HotelDishDaoEmployeeImpl;
import com.shxt.hotelDish.entity.Employee;
import com.shxt.hotelDish.service.IHotelDishServiceEmployee;

/**
 * 员工服务类
 * @author admin
 *
 */
public class HotelDishServiceEmployeeImpl implements IHotelDishServiceEmployee{

	HotelDishDaoEmployeeImpl hoteldao=new HotelDishDaoEmployeeImpl();

	public Employee doLogin(HttpServletRequest request) throws Exception{
		Employee emp=new Employee();
		String account=request.getParameter("account");
		int id=Integer.parseInt(account);
		String password=request.getParameter("password");
		emp.setId(id);
		emp.setPassword(password);
		return emp;
	}
	
	public Employee checkPassword(Employee emp){
		Employee employee=hoteldao.checkPassword(emp);
		return employee;
	}
	
	public int whichIndex(Employee employee){
		if(employee.getPost().equals("经理")){
			return 1;
		}
		if(employee.getPost().equals("服务员")){
			return 2;
		}
		if(employee.getPost().equals("厨师")){
			return 3;
		}
		return 0;
	}
	
	
	public Employee queryEmployeeDataById(HttpServletRequest request){
		int id=Integer.parseInt(request.getParameter("emp_id"));
		Employee emp=hoteldao.queryEmployeeDataById(id);
		return emp;
	}
	
	
	public boolean updateEmployeeDate(HttpServletRequest request){
		Employee emp = new Employee();
		try{
			emp.setId(Integer.parseInt(request.getParameter("id")));
			emp.setId_card(request.getParameter("id_card"));
			emp.setName(new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
			emp.setNation(new String(request.getParameter("nation").getBytes("ISO8859-1"),"UTF-8"));
			emp.setSex(new String(request.getParameter("sex").getBytes("ISO8859-1"),"UTF-8"));
			emp.setTel(request.getParameter("tel"));
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if(hoteldao.updateEmployeeDate(emp)){
			return true;
		}
		return false;
	}

	
	public boolean do_Update_Password_Check_Oldpassword(HttpServletRequest request){
		int id=0;
		try{
			String sid=request.getParameter("id");
			id=Integer.parseInt(sid);
		}catch(Exception e){
			e.printStackTrace();
		}
		System.out.println("接受id-->"+id);
		String oldPassword=hoteldao.do_update_password_get_oldpassword(id);
		if(oldPassword.equals(request.getParameter("oldPassword"))){
			return true;
		}
		return false;
	}
	
	public boolean do_update_password_same(HttpServletRequest request){
		int id=0;
		try{
			String sid=request.getParameter("id");
			id=Integer.parseInt(sid);
		}catch(Exception e){
			e.printStackTrace();
		}
		String passwordOne=request.getParameter("newPassword");
		String passwordTwo=request.getParameter("newPasswordTwo");
		if(passwordOne.equals(passwordTwo)){
			if(hoteldao.do_update_password_set_newPassword(id, passwordOne)){
				return true;
			}
		}
		return false;
	}
	
	
	public boolean add_employee(HttpServletRequest request){
		Employee emp = new Employee();
		try {
			emp.setId_card(request.getParameter("id_card"));
			emp.setName(new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
			emp.setPost(new String(request.getParameter("post").getBytes("ISO8859-1"),"UTF-8"));
			emp.setNation(new String(request.getParameter("nation").getBytes("ISO8859-1"),"UTF-8"));
			emp.setSex(new String(request.getParameter("sex").getBytes("ISO8859-1"),"UTF-8"));
			emp.setTel(request.getParameter("tel"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		if(hoteldao.add_employee(emp)){
			return true;
		}
		return false;
	}
	
	public List<Employee> sel_employee(){
		List<Employee> list = hoteldao.sel_employee();
		return list;
	}
	
	
	public boolean manage_delete(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		if(hoteldao.manage_delete(id)){
			return true;
		}
		return false;
	}
	
	
	public boolean do_manage_update(HttpServletRequest request){
		Employee emp = new Employee();
		try{
			emp.setId(Integer.parseInt(request.getParameter("id")));
			emp.setId_card(request.getParameter("id_card"));
			emp.setName(new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
			emp.setNation(new String(request.getParameter("nation").getBytes("ISO8859-1"),"UTF-8"));
			emp.setSex(new String(request.getParameter("sex").getBytes("ISO8859-1"),"UTF-8"));
			emp.setPost(new String(request.getParameter("post").getBytes("ISO8859-1"),"UTF-8"));
			emp.setTel(request.getParameter("tel"));
		}catch(Exception e){
			e.printStackTrace();
		}
		
		if(hoteldao.do_manage_update(emp)){
			return true;
		}
		return false;
	}
	
	
	
	
	public List<Employee> euqryEmployeeByNameAndPost(HttpServletRequest request){
		String name = request.getParameter("name");
		String post = request.getParameter("post");
		try{
			if(name!=null && !"".equals(name)){
				name = new String(name.getBytes("ISO8859-1"),"UTF-8");
			}
			if(post!=null && !"".equals(post)){
				post = new String(post.getBytes("ISO8859-1"),"UTF-8");
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		List<Employee> list =hoteldao.queryEmployeeByNameAndPost(name, post);
		return list;
		
	}
	
	
	
	
}
