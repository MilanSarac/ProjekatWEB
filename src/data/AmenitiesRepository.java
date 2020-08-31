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
		amenitiesObject.put("Name_Amenities", amenities.getName_Amenities());
		amenitiesObject.put("Active",amenities.isActive());
		amenitiesObject.put("ID_Apartmans", amenities.getID_Apartmans());
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
	
	@SuppressWarnings("unchecked")
	public void UpdateAmenities(String ID_Amenities,String Name_Amenities) throws IOException {
		File file = new File(path);
		JSONArray allAmenities = new JSONArray();
		allAmenities=(JSONArray) GetAmenities();
		for(int i=0;i<allAmenities.size();i++) {
			JSONObject result = (JSONObject) allAmenities.get(i);
			String iD_Amenities = (String) result.get("ID_Amenities");
			if(iD_Amenities.equals(ID_Amenities)) {
			
				result.put("Name_Amenities", Name_Amenities);
			
								
				FileWriter file1 = new FileWriter(file);
				file1.write(allAmenities.toJSONString());
				file1.flush();
				file1.close();
			}
		}
		
	}
	public JSONArray ActiveAmenities() throws IOException {
		AmenitiesRepository  cr= new AmenitiesRepository();
			
			JSONArray allAmenities = new JSONArray();
			JSONArray allActiveAmenities = new JSONArray(); 
			allAmenities = (JSONArray) cr.GetAmenities();
			for (int i=0;i<allAmenities.size();i++) {
				JSONObject result = (JSONObject) allAmenities.get(i);
				boolean active =  (boolean) result.get("Active");
				if (active==true) {
					
					allActiveAmenities.add(result);
				}
			}
			return allActiveAmenities;
		}
	public void DeleteAmenities(String ID_Amenities) throws IOException {
		File file = new File(path);
		JSONArray allAmenities = new JSONArray();
		allAmenities = (JSONArray) GetAmenities();
		for(int i=0;i<allAmenities.size();i++) {
			JSONObject result = (JSONObject) allAmenities.get(i);
			String id = (String) result.get("ID_Amenities");
			if(id.equals(ID_Amenities)) {
				result.put("Active", false);
				
				FileWriter file1 = new FileWriter(file);
				file1.write(allAmenities.toJSONString());
				file1.flush();
				file1.close();
			}
		}
	}

	}

	
