package com.servlet;

import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.Car;

/**
 * Servlet implementation class CarServlet
 */
@WebServlet("/CarServlet")
public class CarServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CarServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		HttpSession session = request.getSession(true);
		
		ArrayList<Car> cars = (ArrayList<Car>) session.getAttribute("cars");
		if (cars ==null)
		{
		cars =new ArrayList<Car>();
		}
		
		Car car = new Car();
		
		
		session.setAttribute("car", car);
		
		car.setManufacturer(request.getParameter("manufacturer"));
		car.setYear(request.getParameter("year"));
		car.setPrice(request.getParameter("price"));
		car.setMileage(request.getParameter("mileage"));
		car.setInvDate(request.getParameter("invDate"));
		car.setBodyType(request.getParameter("bodyType"));
		/*
		String manufacturer = request.getParameter("manufacturer");
		String year = request.getParameter("year");
		String price = request.getParameter("price");
		String mileage = request.getParameter("mileage");
		String invDate = request.getParameter("invDate");
		String bodyType = request.getParameter("bodyType");
		*/
		
		cars.add(car);
		
		String list = Arrays.toString(cars.toArray()).replace("[", "").replace("]", "");
		
		try {
			final String path = "/Users/babatopeayelabola/Desktop/car/";
			String fileName = path+"Car_Database.txt";	
			FileWriter fstream = new FileWriter(fileName,true);
			try (BufferedWriter out = new BufferedWriter(fstream)) {
			    out.write(list.toString());
			    out.close();
			}

		}
	
	catch (IOException e){
		System.err.println("Error: " + e.getMessage());
		}
		
		session.setAttribute("cars", cars);
		RequestDispatcher rs = request.getRequestDispatcher("content.jsp");
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
