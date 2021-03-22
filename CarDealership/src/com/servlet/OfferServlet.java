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
 * Servlet implementation class OfferServlet
 */
@WebServlet("/OfferServlet")
public class OfferServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OfferServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int carId= Integer.parseInt(request.getParameter("carId"));
		String buyer = request.getParameter("name");
		HttpSession session=request.getSession(true);
		ArrayList<Vehicle> vehicleArray= (ArrayList<Vehicle>) session.getAttribute("allCars");
		
		if(vehicleArray == null) {
		vehicleArray = new ArrayList<Vehicle>();
		}
		
		Vehicle vehicleDetails = null;
		
		for(Vehicle vehicle: vehicleArray){ // int i =0; i<car.length;i++
			 if(vehicle.getCarId() == carId) {
				 vehicleDetails = vehicle;
				 
			 }
		 }   
		
		Vehicle vehicle = new Vehicle(); 
	int offer = Integer.parseInt(request.getParameter("offer"));
	double price = Double.parseDouble(request.getParameter("price"));
	double lowestBid = price * .90;	
session.setAttribute("vehicle", vehicleDetails);

	if (offer < lowestBid) {
session.setAttribute("msg", "This price is too low, please try again.");
	RequestDispatcher rs = request.getRequestDispatcher("OfferLow.jsp");
	rs.forward(request, response);
	}
	else {
		session.setAttribute("goodmsg", "The Price has been accepted. Please wait for sales rep. to call you for further action.");
		
		
		for(Vehicle v: vehicleArray){ // int i =0; i<car.length;i++
			 if(v.getCarId() == carId) {
				 
				 v.setSold(true);
					v.setBuyer(buyer);
			 }
		 }   
		
		session.setAttribute("allCars", vehicleArray);
		session.setAttribute("cars", Inventory.getUnsoldVehicles(vehicleArray));
		RequestDispatcher rs = request.getRequestDispatcher("GoodOffer.jsp");
		rs.forward(request, response);
	}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
