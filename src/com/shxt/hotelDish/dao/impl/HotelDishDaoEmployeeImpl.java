package com.shxt.hotelDish.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.shxt.hotelDish.dao.IHotelDishEmployeeDao;
import com.shxt.hotelDish.entity.Employee;
import com.shxt.hotelDish.util.DBUtil;

/**
 * 员工操作数据库类
 * @author admin
 *
 */
public class HotelDishDaoEmployeeImpl implements IHotelDishEmployeeDao{

	
	public Employee checkPassword(Employee emp){
		
		Employee employee=new Employee();
		employee.setId(emp.getId());
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from employee where id="+emp.getId();
			rs=stat.executeQuery(sql);
			if(rs.next()){
				employee.setPassword(rs.getString("password"));
				employee.setName(rs.getString("name"));
				employee.setPost(rs.getString("post"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return employee;
	}

	
	public Employee queryEmployeeDataById(int id){
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		Employee emp=new Employee();
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			rs=stat.executeQuery("select * from employee where id="+id);
			while(rs.next()){
				emp.setId(rs.getInt("id"));
				emp.setId_card(rs.getString("id_card"));
				emp.setName(rs.getString("name"));
				emp.setNation(rs.getString("nation"));
				emp.setPassword(rs.getString("password"));
				emp.setPost(rs.getString("post"));
				emp.setSex(rs.getString("sex"));
				emp.setTel(rs.getString("tel"));
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return emp;
	}
	
	
	
	public boolean updateEmployeeDate(Employee emp){
		Connection conn=null;
		PreparedStatement ps=null;
		try{
			conn=DBUtil.getDBConn();
			String sql="update employee set name=?,id_card=?,nation=?,sex=?,tel=? where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, emp.getName());
			ps.setString(2, emp.getId_card());
			ps.setString(3, emp.getNation());
			ps.setString(4, emp.getSex());
			ps.setString(5, emp.getTel());
			ps.setInt(6,emp.getId());
			if(ps.executeUpdate()>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				ps.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return false;
	}
	
	
	public String do_update_password_get_oldpassword(int id){
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		String password= new String();
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from employee where id="+id;
			rs=stat.executeQuery(sql);
			while(rs.next()){
				password=rs.getString("password");
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return password;
	}
	
	
	public boolean do_update_password_set_newPassword(int id,String newPassword){
		Connection conn=null;
		Statement stat=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="update employee set password="+newPassword+" where id="+id;
			if(stat.executeUpdate(sql)>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
	
	
	public boolean add_employee(Employee emp){
		Connection conn=null;
		PreparedStatement ps=null;
		try{
			conn=DBUtil.getDBConn();
			String sql="insert into employee (name,id_card,nation,sex,tel,post) values(?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, emp.getName());
			ps.setString(2, emp.getId_card());
			ps.setString(3, emp.getNation());
			ps.setString(4, emp.getSex());
			ps.setString(5, emp.getTel());
			ps.setString(6,emp.getPost());
			if(ps.executeUpdate()>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				ps.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
	
	
	
	public List<Employee> sel_employee(){
		List<Employee> list = new ArrayList<Employee>(10);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from employee ";
			rs = stat.executeQuery(sql);
			while(rs.next()){
				Employee emp = new Employee();
				emp.setId(rs.getInt("id"));
				emp.setId_card(rs.getString("id_card"));
				emp.setName(rs.getString("name"));
				emp.setNation(rs.getString("nation"));
				emp.setPost(rs.getString("post"));
				emp.setSex(rs.getString("sex"));
				emp.setTel(rs.getString("tel"));
				list.add(emp);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return list;
	}
	
	
	
	public boolean manage_delete(int id){
		Connection conn=null;
		Statement stat=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="delete from employee where id = "+id;
			if(stat.executeUpdate(sql)!=0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		return false;
	}
	
	
	
	public boolean do_manage_update(Employee emp){
		Connection conn=null;
		PreparedStatement ps=null;
		try{
			conn=DBUtil.getDBConn();
			String sql="update employee set name=?,id_card=?,nation=?,post=?,sex=?,tel=? where id=?";
			ps=conn.prepareStatement(sql);
			ps.setString(1, emp.getName());
			ps.setString(2, emp.getId_card());
			ps.setString(3, emp.getNation());
			ps.setString(4, emp.getPost());
			ps.setString(5, emp.getSex());
			ps.setString(6, emp.getTel());
			ps.setInt(7,emp.getId());
			if(ps.executeUpdate()>0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				ps.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return false;
	}
	
	
	
	public List<Employee> queryEmployeeByNameAndPost(String name,String post){
		List<Employee> list = new ArrayList<Employee>(10);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from employee where 1= 1 ";
			if(name!=null && !"".equals(name)){
				sql+=" and name like '%"+name+"%'";
			}
			if(post!=null && !"".equals(post)){
				sql+=" and post like '%"+post+"%'";
			}
			rs = stat.executeQuery(sql);
			while(rs.next()){
				Employee emp = new Employee();
				emp.setId(rs.getInt("id"));
				emp.setId_card(rs.getString("id_card"));
				emp.setName(rs.getString("name"));
				emp.setNation(rs.getString("nation"));
				emp.setPost(rs.getString("post"));
				emp.setSex(rs.getString("sex"));
				emp.setTel(rs.getString("tel"));
				list.add(emp);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		
		return list;
	}
	
	
	
	
	
	
	
	
	
	
	
}
