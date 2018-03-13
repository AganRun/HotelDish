package com.shxt.hotelDish.servlet;



import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shxt.hotelDish.entity.Employee;
import com.shxt.hotelDish.service.impl.HotelDishServiceDealImpl;
import com.shxt.hotelDish.service.impl.HotelDishServiceEmployeeImpl;

public class HotelServlet extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response){
		String command= request.getParameter("command");
		if(command.equals("login")){
			try {
				login(request ,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}else if(command.equals("dishes_add")){
			try {
				dishes_add(request,response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		doPost(request,response);
	}
	
	public void login(HttpServletRequest request,HttpServletResponse response) throws Exception{
		HotelDishServiceEmployeeImpl hotelservice=new HotelDishServiceEmployeeImpl();
		Employee emp=new Employee();
		try{
			emp=hotelservice.doLogin(request);
		}catch(Exception e){
			request.setAttribute("MESSAGE", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
		if(emp.getId()!=0){
			Employee employee=hotelservice.checkPassword(emp);
			if(employee.getPassword()!=null && employee.getPassword().equals(emp.getPassword())){
				request.getSession().setAttribute("EMPLOYEE",employee);
				int whichIndex=hotelservice.whichIndex(employee);
				switch(whichIndex){
				case 1 :
					response.sendRedirect("index_manage.jsp");
					break;
				case 2 :
					response.sendRedirect("index_waiter.jsp");
					break;
				case 3 :
					response.sendRedirect("index_cooker.jsp");
					break;
				}
			}else{
				request.setAttribute("MESSAGE", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ");
				request.getRequestDispatcher("login.jsp").forward(request, response);
			}
		}else{
			request.setAttribute("MESSAGE", "’À∫≈ªÚ√‹¬Î¥ÌŒÛ");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}
	
	public void dishes_add(HttpServletRequest request ,HttpServletResponse response) throws Exception{
		HotelDishServiceDealImpl hotelservice = new HotelDishServiceDealImpl();
		if(hotelservice.add_dishes(request)){
			response.sendRedirect("success.jsp");
		}else{
			response.sendRedirect("fail.jsp");
		}
	}
}
