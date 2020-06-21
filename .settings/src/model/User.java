package model;

public class User {

	private String Username;
	private String Password;
	private String Name;
	private String SureName;
	private String Role;
	private String For_Rent;
	private String Rented;
	private String List_Reservation;
	private String PasswordControl;
	private String Male;
	private String Female;

	public  User(String username, String name, String sureName,String male,String female, 
			String password,String passwordControl,String role){
		super();
		Username= username;
		Name=name;
		SureName=sureName;
		Male=male;
		Female=female;
		Password=password;
		PasswordControl=passwordControl;
		Role=role;
		
	}
	public String getMale() {
		return Male;
	}
	public void setMale(String male) {
		Male = male;
	}

	public String getFemale() {
		return Female;
	}
	public void setFemale(String female) {
		Female = female;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public String getPasswordControl() {
		return PasswordControl;
	}
	public void setPasswordControl(String passwordControl) {
		PasswordControl = passwordControl;
	}
	public  User() {}
	
	public String getUsername() {
		return Username;
	}
	public void setUserame(String username) {
		Username = username;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getSureName() {
		return SureName;
	}
	public void setSureName(String sureName) {
		SureName = sureName;
	}

	public String getRole() {
		return Role;
	}
	public void setRole(String role) {
		Role = role;
	}
	public String getFor_Rent() {
		return For_Rent;
	}
	public void setFor_Rent(String for_Rent) {
		For_Rent = for_Rent;
	}
	public String getRented() {
		return Rented;
	}
	public void setRented(String rented) {
		Rented = rented;
	}
	public String getList_Reservation() {
		return List_Reservation;
	}
	public void setList_Reservation(String list_Reservation) {
		List_Reservation = list_Reservation;
	}
	
}
