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
 * Servlet implementation class SearchVehicleServlet
 */
@WebServlet("/SearchVehicleServlet")
public class SearchVehicleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchVehicleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		ArrayList<Vehicle> vehicleArray = Inventory.getVehicleList();
		
		String search=request.getParameter("search");
		ArrayList vehicleSearch=new ArrayList();
		int count=0;
		
		
		//search for car
		for(Vehicle vehicle: vehicleArray) {
			//if search name equals model or make of car
			
			if(vehicleArray != null) {
			if(vehicle.getMake().equalsIgnoreCase(search)) {
				
				vehicleSearch.add(vehicle);
				count++;
				
			}
			}
			else {
				System.out.println("No Vehicle Found");
			}
				
				
			
	
		}
		session.setAttribute("cars", vehicleArray);
		session.setAttribute("count", count);
		session.setAttribute("vehiclesearch", vehicleSearch);
		RequestDispatcher rs = request.getRequestDispatcher("SearchFunction.jsp");
		rs.forward(request, response);
		
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
