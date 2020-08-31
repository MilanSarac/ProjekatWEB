 package logic;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.ApartmentRepository;

public class ApartmanLogic {

	public ArrayList<String> Type() throws IOException {
		
		 ArrayList<String> Duplicate = new ArrayList<String>();
		 ApartmentRepository amr = new ApartmentRepository();
		 JSONArray allApartmants = (JSONArray) amr.GetallApartments();
		 for (int i = 0; i < allApartmants.size(); i++) {
			JSONObject red = (JSONObject) allApartmants.get(i);
			String ID_Apartmants = (String) red.get("ID");
			Duplicate.add(ID_Apartmants);
		    
			   
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

		public JSONArray ActiveApartmans() throws IOException {
			ApartmentRepository  ar= new ApartmentRepository();
				
				JSONArray allApartmans = new JSONArray();
				JSONArray allActiveApartmans = new JSONArray(); 
				allApartmans = (JSONArray) ar.GetallApartments();
				for (int i=0;i<allApartmans.size();i++) {
					JSONObject result = (JSONObject) allApartmans.get(i);
					boolean active =  (boolean) result.get("Active");
					if (active==true) {
						
						allActiveApartmans.add(result);
					}
				}
				return allActiveApartmans;
			}
	 
	
	 public JSONObject ApartmanById(String Id) throws IOException {
		 JSONArray allApartman = new JSONArray();
		 allApartman = ActiveApartmans();
		 JSONObject apartman = new JSONObject();
		 for (int i=0;i<allApartman.size();i++) {
			 JSONObject result = (JSONObject) allApartman.get(i);
			 String id = (String) result.get("Id");
			 if(id.equals(Id)) {
				 apartman=(JSONObject) allApartman.get(i);
			 }
		 }
		 
		 return apartman;
	 }
}
