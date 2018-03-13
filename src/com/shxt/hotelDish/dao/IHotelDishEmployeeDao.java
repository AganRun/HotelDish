package com.shxt.hotelDish.dao;

import java.util.List;

import com.shxt.hotelDish.entity.Employee;

/**
 * 员工操作数据库接口
 * @author admin
 *
 */
public interface IHotelDishEmployeeDao {

	
	public Employee checkPassword(Employee emp);
	
	public Employee queryEmployeeDataById(int id);
	
	public boolean updateEmployeeDate(Employee emp);
	
	public String do_update_password_get_oldpassword(int id);
	
	public boolean do_update_password_set_newPassword(int id,String newPassword);
	
	public boolean add_employee(Employee emp);
	
	public List<Employee> sel_employee();
	
	public boolean manage_delete(int id);
	
	public boolean do_manage_update(Employee emp);
	
	public List<Employee> queryEmployeeByNameAndPost(String name,String post);
	
	
}
