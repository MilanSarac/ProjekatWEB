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
		
		JSONObject apartmentJson = new JSONObject();
		//JSONObject amenitiesObject = new JSONObject();
		apartmentJson.put("ID_Apartman", apartment.getID_Apartman());
		apartmentJson.put("Sadrzaj", apartment.getSadrzaji());
		apartmentJson.put("Type", apartment.getType());
		apartmentJson.put("Number_Rooms", apartment.getNumber_Rooms());
		apartmentJson.put("Number_Guests", apartment.getNumber_Guests());
		apartmentJson.put("Date_for_Rent_Start", apartment.getDate_for_Rent_Start());
		apartmentJson.put("Date_for_Rent_End", apartment.getDate_for_Rent_End());
		apartmentJson.put("Host", apartment.getHost());
		apartmentJson.put("Price_per_night", apartment.getPrice_per_night());
		apartmentJson.put("Check_in_time", apartment.getCheck_in_time());
		apartmentJson.put("Check_out_time", apartment.getCheck_out_time());
		apartmentJson.put("Active",apartment.isActive());
		apartmentJson.put("Latitude", apartment.getLatitude());
		apartmentJson.put("Longitude", apartment.getLongitude());
		apartmentJson.put("Street", apartment.getStreet());
		apartmentJson.put("Streetnumber", apartment.getStreetnumber());
		apartmentJson.put("Place", apartment.getPlace());
		apartmentJson.put("Zip_post", apartment.getZip_post());
		apartmentJson.put("Positive", apartment.getPositive());
		//JSONObject apartmentObjectO = new JSONObject();
	//	apartmentObjectO.put("Sadrzaj",amenitiesObject);
		//apartmentObjectO.put("apartmentObject",apartmentObject);
	//	System.out.println(apartmentObject);
		allApartments.add(apartmentJson);
		
		System.out.println(apartmentJson);
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
		apartmentObject.put("ID_Apartman", apartment.getID_Apartman());
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

	 public JSONObject ApartmanById(String ID_Apartman) throws IOException {
		 JSONArray allApartmans = new JSONArray();
		 allApartmans = ActiveApartmans();
		 JSONObject advertiesments = new JSONObject();
		 for (int i=0;i<allApartmans.size();i++) {
			 JSONObject result = (JSONObject) allApartmans.get(i);
			 String id_Apartman = (String) result.get("ID_Apartman");
			 if(id_Apartman.equals(id_Apartman)) {
				 advertiesments=(JSONObject) allApartmans.get(i);
			 }
		 }
		 
		 return advertiesments;
	 }
	 public void DeleteApartman(String ID_Apartman) throws IOException {
			File file = new File(path);
			JSONArray allApartmans = new JSONArray();
			allApartmans = (JSONArray) GetallApartments();
			for(int i=0;i<allApartmans.size();i++) {
				JSONObject result = (JSONObject) allApartmans.get(i);
				String id_Apartman = (String) result.get("ID_Apartman");
				if(id_Apartman.equals(ID_Apartman)) {
					result.put("Active", false);
					
					FileWriter file1 = new FileWriter(file);
					file1.write(allApartmans.toJSONString());
					file1.flush();
					file1.close();
				}
			}
		}

	@SuppressWarnings("unchecked")
	public void updateApartman(String ID_Apartman, String Number_Guests)throws IOException{
		File file=new File(path);
		JSONArray allApartmans=new JSONArray();
		allApartmans= (JSONArray)GetallApartments();
		JSONObject userObject = new JSONObject();
		for(int i=0; i< allApartmans.size(); i++) {
		
		JSONObject result = (JSONObject) allApartmans.get(i);
		String name= (String)result.get("ID_Apartman");
		if(name.equals(ID_Apartman)) {
		result.put("ID_Apartman",ID_Apartman);
		result.put("Number_Guests",Number_Guests);
		FileWriter file1= new FileWriter(file);
		file1.write(allApartmans.toJSONString());
		file1.flush();
		file1.close();
	}
	}
	}
}	
		 




