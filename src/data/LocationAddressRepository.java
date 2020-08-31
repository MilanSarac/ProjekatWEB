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

import model.LocationAddress;

public class LocationAddressRepository {
public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\locationaddress.json";
	
	@SuppressWarnings("unchecked")
	public void addLocationAddress(LocationAddress locationAddress) throws IOException {

		File file = new File(path);
		JSONArray allAddress = new JSONArray();
		allAddress = (JSONArray) GetLocationAddress();

		JSONObject addressObject = new JSONObject();
		JSONObject Object = new JSONObject();
		Object.put("IDAparment", locationAddress.getIDAparment());
		Object.put("Latitude", locationAddress.getLatitude());
		Object.put("Longitude", locationAddress.getLongitude());
		addressObject.put("Street", locationAddress.getStreet());
		addressObject.put("Streetnumber", locationAddress.getStreetnumber());
		addressObject.put("Place", locationAddress.getPlace());
		addressObject.put("Zip_post", locationAddress.getZip_post());
	
		JSONObject addressObjectO = new JSONObject();
		addressObjectO.put("Object",Object);
		addressObjectO.put("Address",addressObject);
		
		allAddress.add(addressObjectO);
		System.out.println(allAddress);

		FileWriter file1 = new FileWriter(file);
		file1.write(allAddress.toJSONString());
		file1.flush();
		file1.close();
	}

	

	
	public ArrayList<LocationAddress> GetLocationAddress() throws IOException {
		File file= new File(path);
		FileReader fileReader = new FileReader(file);
		JSONParser jsonParser = new JSONParser();
		Object obj;
		JSONArray jsonArray1 = null;
		try {
			obj= jsonParser.parse(fileReader);
			jsonArray1= (JSONArray)obj;
		}catch (ParseException e) {
			e.printStackTrace();
		}
		return jsonArray1;
	}

}



