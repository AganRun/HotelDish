package com.shxt.hotelDish.dao;

import java.util.List;

import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;

/**
 * 订单操作数据库接口
 * @author admin
 *
 */
public interface IHotelDishDeal {

	public boolean cookDishesById(int id);
	
	public boolean LeftNumDomn(int id);
	
	public List<OrderList> sel_cookedList();
	
	public List<OrderList> do_serving(int table_no);
	
	public void doServingChangeCondition(int table_no);
	
	public List<OrderList> pay();
	
	public List<OrderList> sel_pay();
	
	public boolean orderlistDeleteById(int id);
	
	public boolean add_dishes(Dishes dishes);
	
	public boolean dishes_delete(int id);
	
	public boolean dishes_update(Dishes dishes);
	
	public Dishes dishes_queryById(int id);
	
	
	
	
	
	
	
	
	
	
	
	
	
}
