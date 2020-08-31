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

import model.Apartment;

public class ApartmentRepository {
	
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\apartmans.json";

	
	@SuppressWarnings("unchecked")
	public void addApartment(Apartment apartment)throws IOException{
		File file=new File(path);
		JSONArray allApartments=new JSONArray();
		allApartments= (JSONArray) GetallApartments();
		
		JSONObject apartmentObject = new JSONObject();
		JSONObject amenitiesObject = new JSONObject();
		apartmentObject.put("ID", apartment.getID());
		amenitiesObject.put("Sadrzaj", apartment.getSadrzaj());
		apartmentObject.put("Type", apartment.getType());
		apartmentObject.put("Number_Rooms", apartment.getNumber_Rooms());
		apartmentObject.put("Number_Guests", apartment.getNumber_Guests());
		apartmentObject.put("Date_for_Rent_Start", apartment.getDate_for_Rent_Start());
		apartmentObject.put("Date_for_Rent_End", apartment.getDate_for_Rent_End());
		apartmentObject.put("Host", apartment.getHost());
		apartmentObject.put("Price_per_night", apartment.getPrice_per_night());
		apartmentObject.put("Check_in_time", apartment.getCheck_in_time());
		apartmentObject.put("Check_out_time", apartment.getCheck_out_time());
		apartmentObject.put("Active", apartment.isActive());
		apartmentObject.put("Latitude", apartment.getLatitude());
		apartmentObject.put("Longitude", apartment.getLongitude());
		apartmentObject.put("Street", apartment.getStreet());
		apartmentObject.put("Streetnumber", apartment.getStreetnumber());
		apartmentObject.put("Place", apartment.getPlace());
		apartmentObject.put("Zip_post", apartment.getZip_post());
	
		JSONObject apartmentObjectO = new JSONObject();
		apartmentObjectO.put("Sadrzaj",amenitiesObject);
		apartmentObjectO.put("apartmentObject",apartmentObject);
		
		allApartments.add(apartmentObjectO);
		
		System.out.println(apartmentObject);
		FileWriter file1= new FileWriter(file);
		file1.write(allApartments.toJSONString());
		file1.flush();
		file1.close();
	}
	public ArrayList<Apartment> GetallApartments() throws IOException {
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
	
	public void addApartmentAmenities(Apartment apartment)throws IOException{
		File file=new File(path);
		JSONArray allApartments=new JSONArray();
		allApartments= (JSONArray) GetallApartments();
		JSONObject apartmentObject = new JSONObject();
		apartmentObject.put("ID", apartment.getID());
		allApartments.add(apartmentObject);
		FileWriter file1= new FileWriter(file);
		file1.write(allApartments.toJSONString());
		file1.flush();
		file1.close();
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
}

