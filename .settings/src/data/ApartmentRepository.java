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
import model.User;

public class ApartmentRepository {
	
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\apartments.json";

	
	@SuppressWarnings("unchecked")
	public void addApartment(Apartment apartment)throws IOException{
		File file=new File(path);
		JSONArray allApartments=new JSONArray();
		allApartments= (JSONArray) GetallApartments();
		
		JSONObject apartmentObject = new JSONObject();
		apartmentObject.put("Type", apartment.getType());
		apartmentObject.put("Number_Rooms", apartment.getNumber_Rooms());
		apartmentObject.put("Number_Guests", apartment.getNumber_Guests());
		apartmentObject.put("Alocation", apartment.getAlocation());
		apartmentObject.put("Date_for_Rent", apartment.getDate_for_Rent());
		apartmentObject.put("Avaliable_by_Date", apartment.getAvaliable_by_Date());
		apartmentObject.put("Host", apartment.getHost());
		apartmentObject.put("Comments_visited", apartment.getComments_visited());
		apartmentObject.put("Price_per_night", apartment.getPrice_per_night());
		apartmentObject.put("Active_or_Inactive", apartment.getActive_or_Inactive());
		apartmentObject.put("Check_out_time", apartment.getCheck_out_time());
		apartmentObject.put("Amenities", apartment.getAmenities());
		apartmentObject.put("Check_in_time", apartment.getCheck_in_time());


		
		System.out.println(apartmentObject);
		allApartments.add(apartmentObject);
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
}

