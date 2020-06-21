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

import model.Comment;

public class CommentRepository {
	public String path = "C:\\Users\\23\\workspace\\WebProjekat\\WebContent\\data\\comment.json";
	public void addComment(Comment comment) throws IOException{
		File file=new File(path);
		JSONArray allComments=new JSONArray();
		allComments= (JSONArray)GetComment();

		JSONObject commentObject = new JSONObject();
		commentObject.put("Sender", comment.getSender());
		commentObject.put("ReferedToApartment", comment.getReferedToApartment());
		commentObject.put("Rating", comment.getRating());
		commentObject.put("Text", comment.getText());
		allComments.add(commentObject);
		System.out.println(commentObject);
	
		
		
		
		FileWriter file1= new FileWriter(file);
		file1.write(allComments.toJSONString());
		file1.flush();
		file1.close();
	}
	public ArrayList<Comment> GetComment() throws IOException {
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