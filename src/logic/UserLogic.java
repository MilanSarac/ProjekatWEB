package logic;

import java.io.IOException;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.ApartmentRepository;

public class UserLogic {
	
	


	public JSONArray AllOrderedApartmans(String User) throws IOException {
		JSONArray result = new JSONArray();
		ApartmentRepository ar = new ApartmentRepository();
		JSONArray allUserOrdered = (JSONArray) ar.GetallApartments();
		for (int i = 0; i < allUserOrdered.size(); i++) {
			JSONObject red = (JSONObject) allUserOrdered.get(i);
			String Customer = (String) red.get("Gost");
			String Status = (String) red.get("Status");
			if(Customer.equals(User)) {
				result.add(red);
			}
		}
		
		return result;
}
}