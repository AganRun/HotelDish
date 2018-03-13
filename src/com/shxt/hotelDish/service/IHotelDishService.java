package com.shxt.hotelDish.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;

public interface IHotelDishService {

	
	public List<Dishes> selDishes();
	
	public boolean do_dishes_check_table_number(HttpServletRequest request);
	
	public List<OrderList> do_dishes_getdata(HttpServletRequest request);
	
	public boolean do_dishes_setdata(List<OrderList> list);
	
	public List<OrderList> do_dishes_sel_orderlist();
}
