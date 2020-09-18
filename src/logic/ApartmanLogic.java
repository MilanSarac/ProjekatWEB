 package logic;

import java.io.IOException;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.AmenitiesRepository;
import data.ApartmentRepository;
import data.UserRepository;
import model.Apartment;

public class ApartmanLogic {

	public ArrayList<String> Lokacija() throws IOException {
		
		 ArrayList<String> Duplicate = new ArrayList<String>();
		 ApartmentRepository amr = new ApartmentRepository();
		 JSONArray allApartmants = (JSONArray) amr.GetallApartments();
		 for (int i = 0; i < allApartmants.size(); i++) {
			JSONObject red = (JSONObject) allApartmants.get(i);
			String Place = (String) red.get("Place");
			Duplicate.add(Place);
		    
	        } 
		 ArrayList<String> nonDuplicate = new ArrayList<String>();
	     Iterator<String> dupIter = Duplicate.iterator();
	     while(dupIter.hasNext())
	     {
	     String dupWord = dupIter.next();
	     if(nonDuplicate.contains(dupWord))
	     {
	         continue;
	     }else
	     {
	    	 nonDuplicate.add(dupWord);
	     }
	     }

		 return  nonDuplicate;
	 }
	
	public ArrayList<String> ForHost() throws IOException {
		
		 ArrayList<String> Duplicate = new ArrayList<String>();
		 ApartmentRepository amr = new ApartmentRepository();
		 JSONArray allApartmants = (JSONArray) amr.GetallApartments();
		 for (int i = 0; i < allApartmants.size(); i++) {
			JSONObject red = (JSONObject) allApartmants.get(i);
			String Host_Apartmants = (String) red.get("Host");
			Duplicate.add(Host_Apartmants);
	        } 
		 ArrayList<String> nonDupList = new ArrayList<String>();
	     Iterator<String> dupIter = Duplicate.iterator();
	     while(dupIter.hasNext())
	     {
	     String dupWord = dupIter.next();
	     if(nonDupList.contains(dupWord))
	     {
	         continue;
	     }else
	     {
	         nonDupList.add(dupWord);
	     }
	     }

		 
		 return  nonDupList;
	 }
	
	public List<Apartment> TopTen() throws IOException, ParseException {
		ApartmentRepository at = new ApartmentRepository();
		 JSONArray all = (JSONArray) at.GetallApartments();
		 List<Apartment> allForSort = new ArrayList<>();
		 for (int i = 0; i < all.size(); i++) {
			JSONObject object = (JSONObject) all.get(i);
			
			String Sadrzaj = (String) object.get("parameterName");
			String Type = (String) object.get("Type");
			String Date_for_Rent_Start = (String) object.get("Date_for_Rent_Start");
			String Date_for_Rent_End = (String) object.get("Date_for_Rent_End");
			String ID_Apartman = (String) object.get("ID_Apartman");
			String Host = (String) object.get("Host");
			String Check_out_time = (String) object.get("Check_out_time");
			String Check_in_time = (String) object.get("Check_in_time");
		//	String Active = (String) object.get("Active");
			String Latitude = (String) object.get("Latitude");
			String Longitude = (String) object.get("Longitude");
			String Street = (String) object.get("Street");
			String Streetnumber = (String) object.get("Streetnumber");
			String Place = (String) object.get("Place");
			String Zip_post = (String) object.get("Zip_post");
			String Customer =  (String) object.get("Customer");
			//UUID uuid1 = UUID.randomUUID();
			double Number_Rooms = Double.valueOf(String.valueOf(object.get("Number_Rooms")));
			double Number_Guests = Double.valueOf(String.valueOf(object.get("Number_Guests")));
			double Price_per_night = Double.valueOf(String.valueOf(object.get("Price_per_night")));
			int Positive = Integer.valueOf(String.valueOf(object.get("Positive")));
			String Photo = (String) object.get("Photo");
			Apartment apartman = new Apartment(null, Type, Number_Rooms, Number_Guests,ID_Apartman, Date_for_Rent_End,
					Price_per_night,Check_in_time, Check_out_time, true,Latitude, Longitude,Street,Streetnumber,Place, Zip_post,Host, Positive,Customer, Date_for_Rent_End);
				

			allForSort.add(apartman);
		 }
			Collections.sort(allForSort,
		              (apartman1, apartman2) -> apartman2.getPositive()
		                      - apartman1.getPositive());
			 List<Apartment> contestWinners = allForSort.subList(0, 1);
			 return contestWinners;

	 }	
	
	
	public JSONObject ApartmansInfo(String Type) throws IOException {
		System.out.println(Type);
		UserRepository ur = new UserRepository();
		JSONArray allUsers = new JSONArray();
		allUsers = (JSONArray) ur.GetUsers();
		JSONObject user = new JSONObject();
		for (int i = 0; i < allUsers.size(); i++) {
			JSONObject result = (JSONObject) allUsers.get(i);
			String type = (String) result.get("Type");
			
			if(Type.equals(type) )
			{
				user = (JSONObject) allUsers.get(i);
			}
		}
		System.out.println(user);
		return user;
	}
	
	 public String Apartmans(String ID_Apartman) throws IOException {
		 JSONObject allApartmans = new JSONObject();
		 allApartmans = ApartmanById(ID_Apartman);
		 String apartments = null;
		 for (int i=0;i<allApartmans.size();i++) {
			 apartments = (String) allApartmans.get("Apartmans");
		 }
		 return apartments;
	 }

		public JSONArray ActiveApartmansTest() throws IOException {
			 AmenitiesRepository ar= new AmenitiesRepository();
			 JSONArray jAr = ar.ActiveAmenities();
			 ArrayList<String> activeAm = new ArrayList<>();
			 for (int i=0;i<jAr.size();i++) {
					JSONObject result = (JSONObject) jAr.get(i);
					boolean active =  (boolean) result.get("Active");
					activeAm.add((String) result.get("Name_Amenities"));
				}
			 JSONArray allApartman;
			 JSONArray returnApartmans = new JSONArray();
			 allApartman = ActiveApartmans();
			 for (int i=0;i<allApartman.size();i++) {
				 JSONObject apartman = new JSONObject();
				 JSONObject result = (JSONObject) allApartman.get(i);
					 JSONArray sadrzajiArr = (JSONArray) result.get("Sadrzaj");
					 JSONArray sadrzajZaPrikaz = new JSONArray();
					 for (int j=0;j<sadrzajiArr.size();j++) {
						 String sadrzaj = (String) sadrzajiArr.get(j);
						 if(activeAm.contains(sadrzaj)) {
							 sadrzajZaPrikaz.add(sadrzaj);
						 }
					 }
					 result.remove("Sadrzaj");
					 result.put("Sadrzaj", sadrzajZaPrikaz);
					 apartman = result;
					 returnApartmans.add(apartman);
			 }
			 return returnApartmans;
		}
//ovde lepo radi izlistavanje svih AKTIVNIH apartmana i cao!
		public JSONArray ActiveApartmans() throws IOException {
	
		ApartmentRepository ar = new ApartmentRepository();
		JSONArray allApartments = new JSONArray();
		JSONArray allActiveApartments = new JSONArray();
		allApartments = (JSONArray) ar.GetallApartments();
		for (int i = 0; i < allApartments.size(); i++) {
			JSONObject result = (JSONObject) allApartments.get(i);
			boolean active = (boolean) result.get("Active");
			if (active == true) {

				allActiveApartments.add(result);
			}
		}
		return allActiveApartments;
	}
		public JSONArray ActiveNOApartmans() throws IOException {
			
		ApartmentRepository ar = new ApartmentRepository();
		JSONArray allApartments = new JSONArray();
		JSONArray allActiveApartments = new JSONArray();
		allApartments = (JSONArray) ar.GetallApartments();
		for (int i = 0; i < allApartments.size(); i++) {
			JSONObject result = (JSONObject) allApartments.get(i);
			boolean active = (boolean) result.get("Active");
			if (active == false) {

				allActiveApartments.add(result);
			}
		}
		return allActiveApartments;
	}
		//ovde lepo radi izlistavanje svih apartmana i cao!
		public JSONArray ApartmansAN() throws IOException {
			
		ApartmentRepository ar = new ApartmentRepository();
		JSONArray allApartments = new JSONArray();
		JSONArray allANApartments = new JSONArray();
		allApartments = (JSONArray) ar.GetallApartments();
		for (int i = 0; i < allApartments.size(); i++) {
			JSONObject result = (JSONObject) allApartments.get(i);
			{

				allANApartments.add(result);
			}
		}
		return allANApartments;
	}	

	
	 public JSONObject ApartmanById(String ID_Apartman) throws IOException {
		 AmenitiesRepository ar= new AmenitiesRepository();
		 JSONArray jAr = ar.ActiveAmenities();
		 ArrayList<String> activeAm = new ArrayList<>();
		 for (int i=0;i<jAr.size();i++) {
				JSONObject result = (JSONObject) jAr.get(i);
				boolean active =  (boolean) result.get("Active");
				activeAm.add((String) result.get("Name_Amenities"));
			}
		 
		 JSONArray allApartman = new JSONArray();
		 allApartman = ActiveApartmans();
		 JSONObject apartman = new JSONObject();
		 for (int i=0;i<allApartman.size();i++) {
			 JSONObject result = (JSONObject) allApartman.get(i);
			 String id = (String) result.get("ID_Apartman");
			 if(id.equals(ID_Apartman)) {
				 JSONArray sadrzajiArr = (JSONArray) result.get("Sadrzaj");
				 JSONArray sadrzajZaPrikaz = new JSONArray();
				 for (int j=0;j<sadrzajiArr.size();j++) {
					 String sadrzaj = (String) sadrzajiArr.get(j);
					 if(activeAm.contains(sadrzaj)) {
						 sadrzajZaPrikaz.add(sadrzaj);
					 }
				 }
				 result.remove("Sadrzaj");
				 result.put("Sadrzaj", sadrzajZaPrikaz);
				 apartman = result;
				 //apartman=(JSONObject) allApartman.get(i);
			 }
		 }
		 
		 return apartman;
	 }


}
