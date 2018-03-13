package com.shxt.hotelDish.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shxt.hotelDish.dao.IHotelDishDao;
import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;
import com.shxt.hotelDish.util.DBUtil;

/**
 * 菜品操作数据库类
 * @author admin
 *
 */
public class HotelDishDaoImplAll implements IHotelDishDao{

	
	public List<Dishes> selDishes(){
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		List<Dishes> list=new ArrayList<Dishes>(15);
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from dishes";
			rs=stat.executeQuery(sql);
			while(rs.next()){
				Dishes dishes=new Dishes();
				dishes.setId(rs.getInt("id"));
				dishes.setName(rs.getString("name"));
				dishes.setPrice(rs.getInt("price"));
				dishes.setType(rs.getString("type"));
				dishes.setLeftNum(rs.getInt("leftNum"));
				dishes.setTable_no(rs.getInt("table_no"));
				dishes.setImg(rs.getString("img"));
				list.add(dishes);
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
	
	
	public Dishes quetyDishesInfoById(int id){
		Dishes dishes=new Dishes();
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from dishes where id="+id;
			rs=stat.executeQuery(sql);
			while(rs.next()){
				dishes.setName(rs.getString("name"));
				dishes.setPrice(rs.getInt("price"));
				dishes.setType(rs.getString("type"));
				dishes.setLeftNum(rs.getInt("leftNum"));
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
	
	public boolean do_dishes_addData(List<OrderList> list){
		
		Connection conn=null;
		PreparedStatement ps=null;
		try{
			for(int i=0;i<list.size();i++){
				conn=DBUtil.getDBConn();
				String sql="insert into orderlist (dishes_id,name,table_no,priceSum,type,num,leftNum) values (?,?,?,?,?,?,?)";
				ps=conn.prepareStatement(sql);
				ps.setInt(1,list.get(i).getDish_id());
				ps.setString(2, list.get(i).getName());
				ps.setInt(3, list.get(i).getTable_no());
				ps.setInt(4, list.get(i).getPriceNum());
				ps.setString(5, list.get(i).getType());
				ps.setInt(6, list.get(i).getNum());
				ps.setInt(7, list.get(i).getLeftNum());
				if(ps.executeUpdate()==0){
					return false;
				}
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
		
		return true;
	}
	
	public List<OrderList> do_dishes_sel_orderlist(){
		List<OrderList> list = new ArrayList<OrderList>(30);
		Connection conn=null;
		Statement stat=null;
		ResultSet rs=null;
		try{
			conn=DBUtil.getDBConn();
			stat=conn.createStatement();
			String sql="select * from orderlist where `condition`='未处理'";
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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
