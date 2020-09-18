package logic;

import java.io.IOException;
import java.util.ArrayList;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.AmenitiesRepository;
import data.ApartmentRepository;
import data.CommentRepository;

public class CommentLogic {
	
	
	public JSONArray ActiveComment() throws IOException {
		
		CommentRepository ar = new CommentRepository();
		JSONArray allComment = new JSONArray();
		JSONArray allActiveComment = new JSONArray();
		allComment = (JSONArray) ar.GetComment();
		for (int i = 0; i < allComment.size(); i++) {
			JSONObject result = (JSONObject) allComment.get(i);
		//	boolean active = (boolean) result.get("Active");
		//	if (active == true) {

				allActiveComment.add(result);
		//	}
		}
		return allActiveComment;
	}
	
	 public JSONObject CommentById(String ReferedToApartment) throws IOException {
		 CommentRepository ar= new CommentRepository();
		 JSONArray jAr = ar.ActiveComment();
		 ArrayList<String> activeCom = new ArrayList<>();
		 for (int i=0;i<jAr.size();i++) {
				JSONObject result = (JSONObject) jAr.get(i);
				boolean active =  (boolean) result.get("Active");
				activeCom.add((String) result.get("ReferedToApartment"));
			}
		 
		 JSONArray allApartman = new JSONArray();
		 ApartmanLogic al= new ApartmanLogic();
		 allApartman = al.ActiveApartmans();
		 JSONObject apartman = new JSONObject();
		 for (int i=0;i<allApartman.size();i++) {
			 JSONObject result = (JSONObject) allApartman.get(i);
			 String id = (String) result.get("ID_Apartman");
			 if(id.equals(ReferedToApartment)) {
				 JSONArray sadrzajiArr = (JSONArray) result.get("Text");
				 JSONArray komentarZaPrikaz = new JSONArray();
				 for (int j=0;j<sadrzajiArr.size();j++) {
					 String sadrzaj = (String) sadrzajiArr.get(j);
					 if(activeCom.contains(sadrzaj)) {
						 komentarZaPrikaz.add(sadrzaj);
					 }
				 }
				 result.remove("Komentar");
				 result.put("Komentar", komentarZaPrikaz);
				 apartman = result;
				 //apartman=(JSONObject) allApartman.get(i);
			 }
		 }
		 
		 return apartman;
	 }
		

}


