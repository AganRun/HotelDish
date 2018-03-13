package com.shxt.hotelDish.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shxt.hotelDish.entity.Employee;

/**
 * hotel的员工服务操作接口
 * @author admin
 *
 */
public interface IHotelDishServiceEmployee {

	
	public Employee doLogin(HttpServletRequest request) throws Exception;
	
	public Employee checkPassword(Employee emp);
	
	public int whichIndex(Employee employee);
	
	public Employee queryEmployeeDataById(HttpServletRequest request);
	
	public boolean updateEmployeeDate(HttpServletRequest request);
	
	public boolean do_Update_Password_Check_Oldpassword(HttpServletRequest request);
	
	public boolean do_update_password_same(HttpServletRequest request);
	
	public boolean add_employee(HttpServletRequest request);
	
	public List<Employee> sel_employee();
	
	public boolean manage_delete(HttpServletRequest request);
	
	public boolean do_manage_update(HttpServletRequest request);
	
	public List<Employee> euqryEmployeeByNameAndPost(HttpServletRequest request);
	
	
}
