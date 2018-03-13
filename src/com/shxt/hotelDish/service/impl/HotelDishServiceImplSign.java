package com.shxt.hotelDish.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.shxt.hotelDish.dao.impl.HotelDishDaoImplSign;
import com.shxt.hotelDish.entity.Dishes;
import com.shxt.hotelDish.entity.OrderList;
import com.shxt.hotelDish.service.IHotelDishService;

public class HotelDishServiceImplSign implements IHotelDishService{

	HotelDishDaoImplSign hoteldao=new HotelDishDaoImplSign();
	
	public List<Dishes> selDishes(){
		List<Dishes> list=hoteldao.selDishes();
		return list;
	}
	
	public boolean do_dishes_check_table_number(HttpServletRequest request){
		System.out.println(request.getParameter("table_no"));
		if(request.getParameter("table_no").equals("0")){
			return false;
		}else{
			return true;
		}
	}
	
	
	public List<OrderList> do_dishes_getdata(HttpServletRequest request){
		List<OrderList> list=new ArrayList<OrderList>();
		String[] dishID = request.getParameterValues("dishes_id");
		String[] number = request.getParameterValues("number");
		int size=Integer.parseInt(request.getParameter("list_size"));
		for(int i=0;i<size;i++){
			if(!number[i].equals("0")){
				try{
					OrderList orderlist = new OrderList();
					orderlist.setTable_no(Integer.parseInt(request.getParameter("table_no")));
					orderlist.setNum(Integer.parseInt(number[i]));
					orderlist.setDish_id(Integer.parseInt(dishID[i]));
					
					Dishes dishes=hoteldao.quetyDishesInfoById(orderlist.getDish_id());
					orderlist.setName(dishes.getName());
					orderlist.setPriceNum(dishes.getPrice()*orderlist.getNum());
					orderlist.setLeftNum(dishes.getLeftNum());
					orderlist.setType(dishes.getType());
					
					list.add(orderlist);
				}catch(Exception e){
					System.out.println("ÇëÑ¡Ôñ×ÀºÅ");
				}
			}else{
				continue;
			}
		}
		
		return list;
	}
	
	public boolean do_dishes_setdata(List<OrderList> list){
		if(hoteldao.do_dishes_addData(list)){
			return true;
		}
		return false;
	}
	
	
	public List<OrderList> do_dishes_sel_orderlist(){
		List<OrderList> list=hoteldao.do_dishes_sel_orderlist();
		return list;
	}
}
