package com.user;

public class Manufacturer {

	private String manufacturer;		//name of manufacturer
	private Car[] car = new Car[0];		//stores information about all the cars by a manufacturer

	/**
	 * @param nam name of manufacturer
	 * @param c Car object to add to manufacturer
	 */
	public Manufacturer(String name, Car c)
	{
		manufacturer = name.toUpperCase();
		addCar(c);
	}

	/**
	 * add a new car to manufacturer
	 *
	 * @param c Car to add to manufacturer
	 */
	public void addCar(Car c)
	{
		car = resizeArray(car, 1);
		car[car.length - 1] = c;
	}

	/**
	 * count cars by manufacturer
	 * @return number of cars in manufacturer
	 */
	public int carCount()
	{
		return car.length;
	}

	/**
	 * get all cars by manufacturer
	 * @return array of Car objects by manufacturer
	 */
	public Car[] getAllCars()
	{
		return car;
	}

	

	public String getManufacturerName()
	{
		return manufacturer;
	}

	/**
	 * resize the array by a number of element
	 *
	 * @param c array object to extend
	 * @param extendBy number to extend by
	 * @return resultant, extended array
	 */
	private Car[] resizeArray(Car[] c, int extendBy)
	{
		Car[] result = new Car[c.length + extendBy];

		for (int i = 0; i < c.length; i++)
		{
			result[i] = c[i];
		}

		return result;
	}

	

	public void setManufacturersName(String name)
	{
		manufacturer = name.toUpperCase();
	}
}
