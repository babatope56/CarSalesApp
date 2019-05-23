package com.user;

public class Car /*implements java.io.Serializable*/{
	private String manufacturer;
	private String year;
	private String price;
	private String mileage;
	private String invDate;
	private String bodyType;
	private String discountDate;
	
	public String getDiscountDate() {
		return discountDate;
	}

	public void setDiscountDate(String discountDate) {
		this.discountDate = discountDate;
	}

	public Car(){}
	
	public String toString() {
	    
	    return this.manufacturer+ "_"  + this.year+  "_" + this.mileage+  "_" +  this.price+ "_" + this.invDate+ "_" + this.bodyType+ "%"; 
	}

	

	public String getManufacturer() {
		return manufacturer;
	}

	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}


	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getMileage() {
		return mileage;
	}

	public void setMileage(String mileage) {
		this.mileage = mileage;
	}

	public String getInvDate() {
		return invDate;
	}

	public void setInvDate(String invDate) {
		this.invDate = invDate;
	}

	public String getBodyType() {
		return bodyType;
	}

	public void setBodyType(String bodyType) {
		this.bodyType = bodyType;
	}
	
}
