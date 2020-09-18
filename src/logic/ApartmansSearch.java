package logic;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

public class ApartmansSearch {

	 public JSONArray SearchApartmans(HttpServletRequest request) throws IOException , ParseException {
		 
		String date_for_Rent_Start =  request.getParameter("Date_for_Rent_Start");
		String date_for_Rent_End =  request.getParameter("Date_for_Rent_End");
		String Price_per_nightMin =  request.getParameter("Price_per_nightMin");
		String price_per_nightMAX =  request.getParameter("price_per_nightMAX");
		String Number_RoomsMin =  request.getParameter("Number_RoomsMin");
		String Number_RoomsMAX =  request.getParameter("Number_RoomsMAX");
		String Number_GuestsMin =  request.getParameter("Number_GuestsMin");
		String Number_GuestsMAX =  request.getParameter("Number_GuestsMAX");
		String Place = request.getParameter("Place");
		
		Date dateFrom = null ;
		Date dateTo = null;
		double priceFrom = 0;
		double priceTo = 0;
		double roomFrom = 0;
		double roomTo = 0;
		double guestsFrom = 0;
		double guestsTo = 0;
		if(!date_for_Rent_Start.isEmpty()) {
			dateFrom=new SimpleDateFormat("yy-M-d").parse(date_for_Rent_Start);
		}
		if(!date_for_Rent_End.isEmpty()) {
			dateTo=new SimpleDateFormat("yy-M-d").parse(date_for_Rent_End);
			System.out.println(dateTo+"bilo sta da bi skontao");
		}
		if(!Price_per_nightMin.isEmpty()) {
			priceFrom = Double.valueOf(Price_per_nightMin);
		}
		if(!price_per_nightMAX.isEmpty()) {
			priceTo = Double.valueOf(price_per_nightMAX);
		}
		if(!Number_RoomsMin.isEmpty()) {
			roomFrom = Double.valueOf(Number_RoomsMin);
		}
		if(!Number_RoomsMAX.isEmpty()) {
			roomTo = Double.valueOf(Number_RoomsMAX);
		}
		if(!Number_GuestsMin.isEmpty()) {
			guestsFrom = Double.valueOf(Number_GuestsMin);
		}
		if(!Number_GuestsMAX.isEmpty()) {
			guestsTo = Double.valueOf(Number_GuestsMAX);
		}


		 
		 JSONArray result = new JSONArray();
		 String ID_Apartman = request.getParameter("ID_Apartman");
		 String Type = request.getParameter("Type");
		
		 ApartmanLogic ab = new ApartmanLogic();
		 JSONArray allApartmans =ab.ActiveApartmansTest();
		 
		 
		 for (int i = 0; i < allApartmans.size(); i++) {
			JSONObject red = (JSONObject) allApartmans.get(i);
			String Date_for_Rent_Start = (String) red.get("Date_for_Rent_Start");
			Date date=new SimpleDateFormat("yy-M-d").parse(Date_for_Rent_Start);
			double Price_per_night = Double.valueOf(String.valueOf(red.get("Price_per_night")));
			double Number_Rooms = Double.valueOf(String.valueOf(red.get("Number_Rooms")));
			double Number_Guests = Double.valueOf(String.valueOf(red.get("Number_Guests")));
			String place = (String) red.get("Place");
	
			
			 if(!Place.isEmpty() && !place.equals(Place)) {
			    	continue;
			 }
			 if (!date_for_Rent_Start.isEmpty() && date.before(dateFrom)) {
					continue;
				}
				if (!date_for_Rent_End.isEmpty() && dateTo.before(date)) {
					continue;
				}
				if ((!Price_per_nightMin.isEmpty() && priceFrom>Price_per_night)) {
				    continue;
				}
				if ((!price_per_nightMAX.isEmpty() && priceTo<Price_per_night)) {
					 continue;
					}
				if ((!Number_RoomsMin.isEmpty() && roomFrom>Number_Rooms)) {
				    continue;
				}
				if ((!Number_RoomsMAX.isEmpty() && roomTo<Number_Rooms)) {
					 continue;
					}
				if ((!Number_GuestsMin.isEmpty() && guestsFrom>Number_Guests)) {
				    continue;
				}
				if ((!Number_GuestsMAX.isEmpty() && guestsTo<Number_Guests)) {
					 continue;
					}
			result.add(red);
		
		}
			System.out.println(result);
		 return result;
		
	 }
	}
