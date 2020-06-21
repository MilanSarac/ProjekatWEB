package data;

import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import model.Amenities;


public class AmenitiesRepository {
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\amenities.json";
	public void addAmenities(Amenities amenities) throws IOException{
		File file=new File(path);
		JSONArray allAmenities=new JSONArray();
		allAmenities= (JSONArray)GetAmenities();

		JSONObject amenitiesObject = new JSONObject();
		amenitiesObject.put("ID_Amenities", amenities.getID_Amenities());
		amenitiesObject.put("Wifi", amenities.getWifi());
		amenitiesObject.put("Tv", amenities.getTv());
		amenitiesObject.put("AirConditioning", amenities.getAirConditioning());
		amenitiesObject.put("Elevator", amenities.getElevator());
		amenitiesObject.put("Parking", amenities.getParking());
		amenitiesObject.put("Kitchen", amenities.getKitchen());
		amenitiesObject.put("Iron", amenities.getIron());
		amenitiesObject.put("Washing_machine", amenities.getWashing_machine());

		allAmenities.add(amenitiesObject);
		System.out.println(amenitiesObject);
	
		
		
		
		FileWriter file1= new FileWriter(file);
		file1.write(allAmenities.toJSONString());
		file1.flush();
		file1.close();
	}
	public ArrayList<Amenities> GetAmenities() throws IOException {
		File file= new File(path);
		FileReader fileReader = new FileReader(file);
		JSONParser jsonParser = new JSONParser();
		Object obj;
		JSONArray jsonArray = null;
		try {
			obj= jsonParser.parse(fileReader);
			jsonArray= (JSONArray)obj;
		}catch (ParseException e) {
			e.printStackTrace();
		}
		return jsonArray;
	}
	
}