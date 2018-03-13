package com.shxt.hotelDish.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


import com.shxt.hotelDish.dao.IHotelDishDeal;
import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;
import com.shxt.hotelDish.util.DBUtil;

/**
 * 菜品操作数据库类
 * @author admin
 *
 */
public class HotelDishDaoDealImpl implements IHotelDishDeal{
	
	public boolean cookDishesById(int id){
		Connection conn= null;
		Statement stat = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql="update orderlist set `condition`='已做好' where id = "+id;
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
	
	public boolean LeftNumDomn(int id){
		Connection conn= null;
		Statement stat = null;
		ResultSet rs = null;
		try{
			conn = DBUtil.getDBConn();
			stat = conn.createStatement();
			String sql="select * from orderlist where id = "+id ;
			rs = stat.executeQuery(sql);
			while(rs.next()){
				int num =rs.getInt("num");
				int leftNum = rs.getInt("leftNum");
				int leftNumNew = leftNum - num;
				String sql2="update orderlist set leftNum = "+leftNumNew+" where id = "+id;
				if(stat.executeUpdate(sql2)!=0){
					return true;
				}
				
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
	
	
	public List<OrderList> sel_cookedList(){
		List<OrderList> list = new ArrayList<OrderList>(30);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from orderlist where `condition`='已做好'";
			rs=stat.executeQuery(sql);
			while(rs.next()){
				OrderList orderlist = new OrderList();
				orderlist.setId(rs.getInt("id"));
				orderlist.setDish_id(rs.getInt("dishes_id"));
				orderlist.setName(rs.getString("name"));
				orderlist.setTable_no(rs.getInt("table_no"));
				orderlist.setPriceNum(rs.getInt("priceSum"));
				orderlist.setType(rs.getString("type"));
				orderlist.setNum(rs.getInt("num"));
				orderlist.setLeftNum(rs.getInt("leftNum"));
				orderlist.setCondition(rs.getString("condition"));
				list.add(orderlist);
			}
		}catch(Exception e){
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	
	
	public List<OrderList> do_serving(int table_no){
		List<OrderList> list = new ArrayList<OrderList>(10);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from orderlist where table_no = "+table_no+" and `condition` ='已做好'";
			rs=stat.executeQuery(sql);
			while(rs.next()){
				OrderList orderlist = new OrderList();
				orderlist.setId(rs.getInt("id"));
				orderlist.setDish_id(rs.getInt("dishes_id"));
				orderlist.setName(rs.getString("name"));
				orderlist.setTable_no(rs.getInt("table_no"));
				orderlist.setPriceNum(rs.getInt("priceSum"));
				orderlist.setType(rs.getString("type"));
				orderlist.setNum(rs.getInt("num"));
				orderlist.setLeftNum(rs.getInt("leftNum"));
				orderlist.setCondition(rs.getString("condition"));
				list.add(orderlist);
				
			}
		}catch(Exception e){
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	
	public void doServingChangeCondition(int table_no){
			Connection conn= null;
			Statement stat = null;
			ResultSet rs = null;
			try{
				conn = DBUtil.getDBConn();
				stat = conn.createStatement();
				String sql="select * from orderlist where table_no = "+table_no ;
				rs = stat.executeQuery(sql);
				while(rs.next()){
					String sql2="update orderlist set `condition`= '已结账' where table_no = "+table_no;
					stat.executeUpdate(sql2);
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
	}
	
	
	public List<OrderList> pay(){
		List<OrderList> list = new ArrayList<OrderList>(30);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from orderlist where `condition`='已结账'";
			rs=stat.executeQuery(sql);
			while(rs.next()){
				OrderList orderlist = new OrderList();
				orderlist.setId(rs.getInt("id"));
				orderlist.setDish_id(rs.getInt("dishes_id"));
				orderlist.setName(rs.getString("name"));
				orderlist.setTable_no(rs.getInt("table_no"));
				orderlist.setPriceNum(rs.getInt("priceSum"));
				orderlist.setType(rs.getString("type"));
				orderlist.setNum(rs.getInt("num"));
				orderlist.setLeftNum(rs.getInt("leftNum"));
				orderlist.setCondition(rs.getString("condition"));
				list.add(orderlist);
			}
		}catch(Exception e){
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return list;
	}
	
	
	public List<OrderList> sel_pay(){
		List<OrderList> list = new ArrayList<OrderList>(10);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from orderlist where `condition`='已结账'";
			rs=stat.executeQuery(sql);
			while(rs.next()){
				OrderList orderlist = new OrderList();
				orderlist.setId(rs.getInt("id"));
				orderlist.setDish_id(rs.getInt("dishes_id"));
				orderlist.setName(rs.getString("name"));
				orderlist.setTable_no(rs.getInt("table_no"));
				orderlist.setPriceNum(rs.getInt("priceSum"));
				orderlist.setType(rs.getString("type"));
				orderlist.setNum(rs.getInt("num"));
				orderlist.setLeftNum(rs.getInt("leftNum"));
				orderlist.setCondition(rs.getString("condition"));
				list.add(orderlist);
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				rs.close();
				stat.close();
				conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}finally{
				try{
					rs.close();
					stat.close();
					conn.close();
				}catch(Exception e2){
					e2.printStackTrace();
				}
			}
		}
		return list;
	}
	
	
	
	public boolean orderlistDeleteById(int id){
		Connection conn=null;
		Statement stat=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="delete from orderlist where  id= "+id;
			if(stat.executeUpdate(sql)!=0){
				return true;
			}
		}catch(Exception e){
			try{
				stat.close();
				conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return false;
	}
	
	
	
	
	
	public boolean add_dishes(Dishes dishes){
		Connection conn=null;
		PreparedStatement ps=null;
		try{
			conn=DBUtil.getDBConn();
			String sql="insert into dishes (name,price,type,leftNum) values(?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, dishes.getName());
			ps.setInt(2, dishes.getPrice());
			ps.setString(3, dishes.getType());
			ps.setInt(4, dishes.getLeftNum());
			
			if(ps.executeUpdate()!=0){
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
	
	
	
	public boolean dishes_delete(int id){
		Connection conn=null;
		Statement stat=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="delete from dishes where  id= "+id;
			if(stat.executeUpdate(sql)!=0){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				stat.close();
				conn.close();
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
		return false;
	}
	
	
	public boolean dishes_update(Dishes dishes){
		Connection conn = null;
		PreparedStatement ps = null;
		try{
			conn= DBUtil.getDBConn();
			String sql="update dishes set name=?,price=?,type=?,leftNum=? where id = ?";
			ps= conn.prepareStatement(sql); 
			ps.setString(1, dishes.getName());
			ps.setInt(2, dishes.getPrice());
			ps.setString(3, dishes.getType());
			ps.setInt(4, dishes.getLeftNum());
			ps.setInt(5, dishes.getId());
			
			if(ps.executeUpdate()!=0){
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
	
	
	
	public Dishes dishes_queryById(int id){
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		Dishes dishes = new Dishes();
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			rs=stat.executeQuery("select * from dishes where id="+id);
			while(rs.next()){
				dishes.setId(rs.getInt("id"));
				dishes.setLeftNum(rs.getInt("leftNum"));
				dishes.setName(rs.getString("name"));
				dishes.setPrice(rs.getInt("price"));
				dishes.setType(rs.getString("type"));
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
		return dishes;
	}
	
	
	
	
	
	
	
	
	
	
}
