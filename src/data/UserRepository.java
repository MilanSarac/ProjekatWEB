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

import model.User;

public class UserRepository {
	
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\users.json";
	@SuppressWarnings("unchecked")
	
	public void addUser(User user)throws IOException{
		File file=new File(path);
		JSONArray allUsers=new JSONArray();
		allUsers= (JSONArray)GetUsers();
		
		JSONObject userObject = new JSONObject();
		userObject.put("Username", user.getUsername());
		userObject.put("Name", user.getName());
		userObject.put("SureName", user.getSureName());
		userObject.put("Male", user.getMale());
		userObject.put("Female", user.getFemale());
		userObject.put("Password", user.getPassword());
		userObject.put("PasswordControl", user.getPasswordControl());
		userObject.put("Role", user.getRole());
		userObject.put("Active",user.isActive());
		System.out.println(userObject);
		allUsers.add(userObject);
		FileWriter file1= new FileWriter(file);
		file1.write(allUsers.toJSONString());
		file1.flush();
		file1.close();
	}
	@SuppressWarnings("unchecked")
	public void updateUser(String Username,String Name, String SureName,  String Password, String PasswordControl )throws IOException{
		File file=new File(path);
		JSONArray allUsers=new JSONArray();
		allUsers= (JSONArray)GetUsers();
		JSONObject userObject = new JSONObject();
		for(int i=0; i< allUsers.size(); i++) {
		
		JSONObject result = (JSONObject) allUsers.get(i);
		String name= (String)result.get("Username");
		if(name.equals(Username)) {
		
		result.put("Name",Name);
		result.put("Username",Username);
		result.put("SureName",SureName);
		result.put("Password", Password);
		result.put("PasswordControl", PasswordControl);
		FileWriter file1= new FileWriter(file);
		file1.write(allUsers.toJSONString());
		file1.flush();
		file1.close();
	}
	}
	}
	public ArrayList<User> GetUsers() throws IOException {
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
	
	public void ChangeRole(String Username, String Role) throws IOException {
		File file = new File(path);
		JSONArray allUsers = (JSONArray) GetUsers();
		for (int i = 0; i < allUsers.size(); i++) {
			JSONObject red = (JSONObject) allUsers.get(i);
			String username = (String) red.get("Username");
			if (username.equals(Username)) {
				red.put("Role", Role);
				
								
				FileWriter file1 = new FileWriter(file);
				file1.write(allUsers.toJSONString());
				file1.flush();
				file1.close();
			}
		}
	}

	public JSONObject UserByUsername(String Username) throws IOException {
		System.out.println(Username);
		UserRepository ur = new UserRepository();
		JSONArray allUsers = new JSONArray();
		allUsers = (JSONArray) ur.GetUsers();
		JSONObject user = new JSONObject();
		for (int i = 0; i < allUsers.size(); i++) {
			JSONObject result = (JSONObject) allUsers.get(i);
			String username = (String) result.get("Username");
			
			if(Username.equals(username) )
			{
				user = (JSONObject) allUsers.get(i);
			}
		}
		System.out.println(user);
		return user;
	}



	public void DeleteUser(String Username) throws IOException {
		File file = new File(path);
		JSONArray allUser = new JSONArray();
		allUser = (JSONArray) GetUsers();
		for(int i=0;i<allUser.size();i++) {
			JSONObject result = (JSONObject) allUser.get(i);
			String id = (String) result.get("Username");
			if(id.equals(Username)) {
				result.put("Active", false);
				
				FileWriter file1 = new FileWriter(file);
				file1.write(allUser.toJSONString());
				file1.flush();
				file1.close();
			}
		}
	}
	public JSONArray ActiveUser() throws IOException {
		UserRepository  ur= new UserRepository();
			
			JSONArray allUser = new JSONArray();
			JSONArray allActiveUser  = new JSONArray(); 
			allUser = (JSONArray) ur.GetUsers();
			for (int i=0;i<allUser.size();i++) {
				JSONObject result = (JSONObject) allUser.get(i);
				boolean active =  (boolean) result.get("Active");
				if (active==true) {
					
					allActiveUser.add(result);
				}
			}
			return allActiveUser;
		}
	}
	




