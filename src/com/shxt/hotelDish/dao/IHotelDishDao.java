package com.shxt.hotelDish.dao;

import java.util.List;

import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;

/**
 * ��Ʒ�������ݿ�ӿ�
 * @author admin
 *
 */
public interface IHotelDishDao {

	public List<Dishes> selDishes();
	
	public Dishes quetyDishesInfoById(int id);
	
	public boolean do_dishes_addData(List<OrderList> list);
	
	public List<OrderList> do_dishes_sel_orderlist();
	
	
}
