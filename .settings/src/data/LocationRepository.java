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

import model.Location;
import model.User;

public class LocationRepository {

	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\location.json";
	
	@SuppressWarnings("unchecked")
	public void addLocation(Location location)throws IOException{
		File file=new File(path);
		JSONArray allLocations=new JSONArray();
		allLocations= (JSONArray)GetLocation();

		JSONObject locationObject = new JSONObject();
		locationObject.put("Latitude", location.getLatitude());
		locationObject.put("Longitude", location.getLongitude());
		locationObject.put("Location_Adress", location.getLocation_Adress());
		allLocations.add(locationObject);
		System.out.println(locationObject);
		
		FileWriter file1= new FileWriter(file);
		file1.write(allLocations.toJSONString());
		file1.flush();
		file1.close();
	}
	public ArrayList<Location> GetLocation() throws IOException {
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
