package logic;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.AmenitiesRepository;

public class AmenitiesLogic {

	public ArrayList<String> Name_Amenities() throws IOException {
		
		 ArrayList<String> Duplicate = new ArrayList<String>();
		 AmenitiesRepository amr = new AmenitiesRepository();
		 JSONArray allAmenities = (JSONArray) amr.GetAmenities();
		 for (int i = 0; i < allAmenities.size(); i++) {
			JSONObject red = (JSONObject) allAmenities.get(i);
			String name_Amenities = (String) red.get("Name_Amenities");
			Duplicate.add(name_Amenities);
		    
			   
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
	
}
