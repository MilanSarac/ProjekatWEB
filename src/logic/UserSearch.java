package logic;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import data.UserRepository;

public class UserSearch {

		 public JSONArray SearchUser(HttpServletRequest request) throws IOException {
			 JSONArray result = new JSONArray();
			 String SureName = request.getParameter("SureName");
			 String Name = request.getParameter("Name");
			
			 UserRepository ur = new UserRepository();
			 JSONArray allUsers = (JSONArray) ur.GetUsers();
			 for (int i = 0; i < allUsers.size(); i++) {
				JSONObject red = (JSONObject) allUsers.get(i);
				String username =  (String) red.get("SureName");
				String name = (String) red.get("Name");
				if(!Name.isEmpty() && !name.equals(Name)) {
					continue;
				}
				if(!SureName.isEmpty() && !username.equals(SureName)) {
					continue;
				}
				result.add(red);
				System.out.println(result);
			}
				System.out.println(result);
			 return result;
			
		 }
		}
