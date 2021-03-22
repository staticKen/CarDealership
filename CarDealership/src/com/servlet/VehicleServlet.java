package com.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.inventory.Inventory;
import com.inventory.Vehicle;

/**
 * Servlet implementation class VehicleServlet
 */
@WebServlet("/VehicleServlet")
public class VehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VehicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(true);
		ArrayList<Vehicle> carArray= Inventory.getUnsoldVehicles(Inventory.getVehicleList());
		session.setAttribute("allCars", Inventory.getVehicleList());
		Inventory inventory =(Inventory) session.getAttribute("inventory");
		session.setAttribute("cars", carArray);
		session.setAttribute("inventory", inventory);
//		RequestDispatcher rs=request.getRequestDispatcher("vehicles.jsp");
//		rs.forward(request, response);
		
	
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
