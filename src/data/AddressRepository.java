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

import model.Address;

import model.Location;


public class AddressRepository {
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\address.json";
	public void addAddress(Address address) throws IOException{
		File file=new File(path);
		JSONArray allAddresss=new JSONArray();
		allAddresss= (JSONArray)GetAddress();


		JSONObject addressObject = new JSONObject();
		addressObject.put("Street", address.getStreet());
		addressObject.put("Streetnumber", address.getStreetnumber());
		addressObject.put("Place", address.getPlace());
		addressObject.put("Zip_post", address.getZip_post());
		allAddresss.add(addressObject);
		System.out.println(addressObject);

		JSONObject locationObject = new JSONObject();
		locationObject.put("Street", address.getStreet());
		locationObject.put("Streetnumber", address.getStreetnumber());
		locationObject.put("Place", address.getPlace());
		locationObject.put("Zip_post", address.getZip_post());
		allAddresss.add(locationObject);
		System.out.println(locationObject);

		
		FileWriter file1= new FileWriter(file);
		file1.write(allAddresss.toJSONString());
		file1.flush();
		file1.close();
	}
	public ArrayList<Address> GetAddress() throws IOException {
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
