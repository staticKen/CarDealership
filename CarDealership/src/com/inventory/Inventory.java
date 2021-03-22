package com.inventory;

import java.util.ArrayList;

public class Inventory {

	static ArrayList<Vehicle> vehicleArray = new ArrayList<Vehicle>();
	
	
	public static ArrayList<Vehicle> getVehicleArray(){
		return vehicleArray;
	}
	
	public void setVehicleArray(ArrayList<Vehicle> vehicleArray){
		Inventory.vehicleArray = vehicleArray;
	}
	
	public static ArrayList<Vehicle> getUnsoldVehicles(ArrayList<Vehicle> list){
		ArrayList<Vehicle> output = new ArrayList<Vehicle>();
		
		for(Vehicle v : list) {
			if(!v.isSold()) {
				output.add(v);
			}
		}
		
		return output;
	}
	
	public static ArrayList<Vehicle> getVehicleList() {
		//String year, String make, String model, String milesDriven, String newOrUsed, String img, String description,
		//String price, String carId
		ArrayList<Vehicle> vehicles = new ArrayList<Vehicle>();
		Vehicle v1 = new Vehicle("2018", "BMW","740i","8900","Fairly Used", "\\img\\BMW.jpg", "Clean", 85000,101,"02/25/2020",false);
		Vehicle v2 = new Vehicle("2020", "Mercedes", "GT S", "1000","Brand New", "\\img\\Mercedes.jpg","Super Car",60000,102,"04/21/2020",false);
		Vehicle v3 = new Vehicle("2019", "Ford", "F250", "25000", "Like New", ".\\img\\Ford.jpg", "Piece o' junk", 25001, 103, "11/20/2020", false);
		Vehicle v4 = new Vehicle("1993", "Mazda", "B2600i", "175000", "Used", ".\\img\\Mazda.jpg", "Classic", 35000, 104, "09/11/2020", false);
		Vehicle v5 = new Vehicle("2021", "Tesla", "Model S", "91", "Brand New", "\\img\\Tesla.jpg", "Super Crisp", 60000, 105, "03/08/20121", false);
		
		vehicles.add(v1);
		vehicles.add(v2);
		vehicles.add(v3);
		vehicles.add(v4);
		vehicles.add(v5);
//		for(Vehicle i: vehicles) {
//			
//			i.setInventoryDate("18/02/2021");
//		}
//		
//		v1.setInventoryDate("21/06/2020");
//		v4.setInventoryDate("12/03/2020");
		
		return vehicles;
	}
}
