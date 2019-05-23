package com.servlet;

import java.awt.List;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.time.temporal.ChronoUnit;
import java.time.temporal.Temporal;
/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(true);
		ArrayList<Car> found =(ArrayList<Car>)session.getAttribute("found") ;
		ArrayList<Car> existingCarList = new ArrayList<Car> ();
		
		
		found =new ArrayList<Car>();
		

		final String path = "/Users/babatopeayelabola/Desktop/car/";
		String fileName = path+"Car_Database.txt";			

		 
		try {
		Scanner in = new Scanner(new File(fileName));
		StringBuilder importCarList = new StringBuilder();
		
		while(in.hasNext()) {

		importCarList.append(in.nextLine());	


		String str=importCarList.toString();
		ArrayList<String> importedCarList= new ArrayList<String>(Arrays.asList(str.split("%")));	


		for(int i=0; i<importedCarList.size(); i++)
		{
		Car list1 = new Car();
		String line = importedCarList.get(i);
		String [] parseLine = line.split("_");	
		list1.setManufacturer(parseLine[0]);
		list1.setYear(parseLine[1]);
		list1.setMileage(parseLine[2]);
		list1.setPrice(parseLine[3]);
		list1.setInvDate(parseLine[4]);
		list1.setBodyType(parseLine[5]);
		
		existingCarList.add(i,list1);	
		}
		}
		
		}catch(FileNotFoundException e) {
		System.out.println("Error reading file: "+fileName);

		}
		
		
		

	
		Car search = new Car();
		
		search.setManufacturer(request.getParameter("manufacturer"));
		System.out.println("Search query: " + search);

		for (int j = 0; j < existingCarList.size(); j++)
		if (existingCarList.get(j).toString().contains(search.getManufacturer().trim()))
		{
		found.add(existingCarList.get(j));
		}
		
		// converting String Date to Date format
		
					for (int k = 0; k < existingCarList.size(); k++) {
						DateTimeFormatter sp =  DateTimeFormatter.ofPattern("MM/dd/yyyy");
						LocalDate date = LocalDate.parse(existingCarList.get(k).getInvDate().trim(), sp);//.parse(existingCarList.get(k).getInvDate().trim());

						LocalDate now = LocalDate.now();
						
						long days = java.time.temporal.ChronoUnit.DAYS.between(date, now);
						System.out.println(days);
						if (days > 120) {
							existingCarList.get(k).setDiscountDate("You Qualify for a 10% Discount");
							
						}
		}
			
		
		System.out.println("Number of cars found: "+found.size());
		session.setAttribute("existingCarList", existingCarList);
		session.setAttribute("found", found);
		
		
		
		

		RequestDispatcher rs= request.getRequestDispatcher("SearchResult.jsp");
		rs.forward(request, response);
		
		}
	
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
