package com.shxt.hotelDish.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;


/**
 * ≤À∆∑¥¶¿ÌService
 * @author admin
 *
 */
public interface IHotelDishDeal {

	public boolean cookDishes(HttpServletRequest request);
	
	public List<OrderList> sel_cookedList();
	
	public List<OrderList> do_serving(HttpServletRequest request);
	
	public List<OrderList> sel_pay();
	
	public boolean orderlistDeleteById(HttpServletRequest request);
	
	public boolean add_dishes(HttpServletRequest request);
	
	public boolean dishes_delete(HttpServletRequest request);
	
	public boolean dishes_update(HttpServletRequest request);
	
	public Dishes dishes_queryById(HttpServletRequest request);
	
	
}
