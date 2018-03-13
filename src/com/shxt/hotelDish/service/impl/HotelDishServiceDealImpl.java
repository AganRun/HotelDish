package com.shxt.hotelDish.service.impl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shxt.hotelDish.dao.impl.HotelDishDaoDealImpl;
import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;
import com.shxt.hotelDish.service.IHotelDishDeal;

/**
 * 订单服务类
 * @author admin
 *
 */
public class HotelDishServiceDealImpl implements IHotelDishDeal {

	HotelDishDaoDealImpl hoteldao = new HotelDishDaoDealImpl();
	

	public boolean cookDishes(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		if(hoteldao.cookDishesById(id)){
			if(hoteldao.LeftNumDomn(id)){
				return true;
			}
		}
		return false;
	}
	
	public List<OrderList> sel_cookedList(){
		List<OrderList> list = hoteldao.sel_cookedList();
		return list;
	}
	
	
	public List<OrderList> do_serving(HttpServletRequest request){
		int table_no = Integer.parseInt(request.getParameter("table_no"));
		List<OrderList> list = hoteldao.do_serving(table_no);
		hoteldao.doServingChangeCondition(table_no);
		return list;
	}
	
	
	public List<OrderList> sel_pay(){
		List<OrderList> list = hoteldao.sel_pay();
		return list;
	}
	
	
	public boolean orderlistDeleteById(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		if(hoteldao.orderlistDeleteById(id)){
			return true;
		}
		return false;
	}
	
	
	public boolean add_dishes(HttpServletRequest request){
		Dishes dishes = new Dishes();
		try{
			dishes.setLeftNum(Integer.parseInt(request.getParameter("leftNum")));
			dishes.setName(new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
			dishes.setPrice(Integer.parseInt(request.getParameter("price")));
			dishes.setType(new String(request.getParameter("type").getBytes("ISO8859-1"),"UTF-8"));
			if(hoteldao.add_dishes(dishes)){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return false;
	}
	
	
	
	public boolean dishes_delete(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		if(hoteldao.dishes_delete(id)){
			return true;
		}
		return false;
	}
	
	
	public boolean dishes_update(HttpServletRequest request){
		Dishes dishes = new Dishes();
		try{
			dishes.setId(Integer.parseInt(request.getParameter("id")));
			dishes.setLeftNum(Integer.parseInt(request.getParameter("leftNum")));
			dishes.setName(new String(request.getParameter("name").getBytes("ISO8859-1"),"UTF-8"));
			dishes.setPrice(Integer.parseInt(request.getParameter("price")));
			dishes.setType(new String(request.getParameter("type").getBytes("ISO8859-1"),"UTF-8"));
			if(hoteldao.dishes_update(dishes)){
				return true;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
	
	public Dishes dishes_queryById(HttpServletRequest request){
		int id = Integer.parseInt(request.getParameter("id"));
		Dishes dishes = hoteldao.dishes_queryById(id);
		return dishes;
	}
	
	
	
	
}
