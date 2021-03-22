package com.inventory;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.Date;



public class Vehicle {
	
	private String year;
	private String make;
	private String model;
	private String milesDriven;
	private String newOrUsed;
	private String img;
	private String description;
	private double price;
	private int carId;
	private String dateAdd;
	private LocalDateTime convertedInventoryDate;
	private long days;
	private boolean isSold;
	LocalDate invDate;
	private String buyer;
	
	
	LocalDate soldDate = LocalDate.now();
//	public void setSoldDate(LocalDateTime soldDate) {
//		try {
//
//			this.inventoryDate = sdf.parse(inventoryDate);
//
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	};
	

	
	Date inventoryDate;
	// format date from string to date
	SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
	DateTimeFormatter dtf = DateTimeFormatter.ofPattern("MM/dd/yyyy");

	// setter change date from string to date obj
	public void setInventoryDate(String inventoryDate) {
		try {

			this.inventoryDate = sdf.parse(inventoryDate);

		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public String getInventoryDate() {
		return sdf.format(inventoryDate);
	}

//	public boolean getVehicleAge() {
//
//		// Minus the max days the car can be idle on the lot from todays day
//		LocalDateTime date = LocalDateTime.now().minusDays(120);
//		// Converting the inventory date to a localDateTime so both data type are the
//		// same
//		convertedInventoryDate = LocalDateTime.ofInstant(inventoryDate.toInstant(),
//				ZoneId.systemDefault());
//		
//		//LocalDate currentDate = LocalDate.now();
//		//days = ChronoUnit.DAYS.between(convertedInventoryDate, currentDate);
//		
//		
//		
//
//		// Checking to see if the cut off date is after the inventory day
//		// if the cut off date is after the inventory date then this car is within the
//		// cut off limit
//		// if the date is not after the inventory date then this car is over 120 days
//		// from the inventory date.
//		return date.isAfter(convertedInventoryDate);
//
//	}
//	
	
	
	public LocalDate getInvDate() {
		return invDate;
	}


	public void setInvDate(LocalDate invDate) {
		this.invDate = invDate;
	}


	public Vehicle() {
	
	}



	public Vehicle(String year, String make, String model, String milesDriven, String newOrUsed, String img, String description,
			double price, int carId, String dateAdd, boolean isSold) {
		this.year = year;
		this.make = make;
		this.model = model;
		this.milesDriven = milesDriven;
		this.newOrUsed = newOrUsed;
		this.img = img;
		this.description = description;
		this.price = price;
		this.carId = carId;
		this.dateAdd = dateAdd;
		this.isSold = isSold;
		
		this.invDate = LocalDate.parse(dateAdd, dtf);
		
		LocalDate currentDate = LocalDate.now();
		long days = ChronoUnit.DAYS.between(this.invDate, currentDate);
		this.days = days;
	}
	
	
	
	public String getYear() {
		return year;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
	
	public String getMake() {
		return make;
	}
	
	public void setMake(String make) {
		this.make = make;
	}
	
	public String getModel() {
		return model;
	}
	
	public void setModel(String model) {
		this.model = model;
	}
	
	public String getMilesDriven() {
		return milesDriven;
	}
	
	public void setMilesDriven(String milesDriven) {
		this.milesDriven = milesDriven;
	}

	public String getnewOrUsed() {
		return newOrUsed;
	}

	public void setnewOrUsed(String newOrUsed) {
		this.newOrUsed = newOrUsed;
	}
	
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getCarId() {
		return carId;
	}
	
	public void setCarId(int carId) {
		this.carId = carId;
	}

	public String getDateAdd() {
		return dateAdd;
	}

	public void setDateAdd(String dateAdd) {
		this.dateAdd = dateAdd;
	}
	
	public long getDays() {
		return days;
	}
	
	public void setDays(long days) {
		this.days= days;
	}


	public String getBuyer() {
		return buyer;
	}


	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}


	public LocalDate getSoldDate() {
		return soldDate;
	}


	public void setSoldDate(LocalDate soldDate) {
		this.soldDate = soldDate;
	}


	public boolean isSold() {
		return isSold;
	}


	public void setSold(boolean isSold) {
		this.isSold = isSold;
	} 
}
