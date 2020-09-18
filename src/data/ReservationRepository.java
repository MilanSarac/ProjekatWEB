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
import model.Reservation;

public class ReservationRepository {
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\reservation.json";
	
	public void addReservation(Reservation reservation) throws IOException{
		File file=new File(path);
		JSONArray allReservation=new JSONArray();
		allReservation= (JSONArray)GetReservation();

		JSONObject reservationObject = new JSONObject();
		reservationObject.put("OrderDate", reservation.getOrderDate());
		reservationObject.put("NumberOfNights",reservation.getNumberOfNights());
		reservationObject.put("ID_Apartman",reservation.getID_Apartman());
		reservationObject.put("TotalPrice", reservation.getTotalPrice());
		reservationObject.put("Guest", reservation.getGuest());
		reservationObject.put("MessageReservation", reservation.getMessageReservation());
		reservationObject.put("Status", reservation.getStatus());

		allReservation.add(reservationObject);
		System.out.println(reservationObject);
	
		FileWriter file1= new FileWriter(file);
		file1.write(allReservation.toJSONString());
		file1.flush();
		file1.close();
	}

	
		public ArrayList<Reservation> GetReservation() throws IOException {
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

