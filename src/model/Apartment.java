package model;

import java.util.List;

public class Apartment {

	private List<String> Sadrzaji;
	private String ID_Apartman;
	private String Type;//Tip (ceo apartman, soba)
	private double Number_Rooms;//Broj soba
	private double Number_Guests;//Broj gostiju
	private String Date_for_Rent_Start;//Datumi za izdavanje (zadaju Domacini)
	private String Date_for_Rent_End;
	private String Host;//Domacin
	private double Price_per_night;//Cena po noci
	private String Check_in_time;//Vreme za prijavu (inicijalno 2 PM)
	private String Check_out_time;//Vreme za odjavu (inicijalno 10 AM)
	private boolean Active;//Status (Aktivno ili Neaktivno)
	private String Latitude;
	private String Longitude;
	private String Street;
	private String Streetnumber;
	private String Place;
	private String Zip_post;
	private int Positive;

	
	public Apartment() {
		super();
	}
	public Apartment(List<String> sadrzaji, String type, double number_Rooms, double number_Guests,
			 String date_for_Rent_Start, String host, double price_per_night,
			String check_in_time, String check_out_time, boolean active,String iD_Apartman,String latitude, String longitude,String street,String streetnumber,String place, String zip_post,int positive, String visitor,String date_for_Rent_End) {
		super();

		Sadrzaji=sadrzaji;
		ID_Apartman = iD_Apartman;
		Type = type;
		Number_Rooms = number_Rooms;
		Number_Guests = number_Guests;
		Date_for_Rent_Start = date_for_Rent_Start;
		Date_for_Rent_End = date_for_Rent_End;
		Host = host;
		Price_per_night = price_per_night;
		Check_in_time = check_in_time;
		Check_out_time = check_out_time;
		Active = active;

		Latitude = latitude;
		Longitude = longitude;
		Street = street ;
		Streetnumber = streetnumber ;
		Place = place;
		Zip_post = zip_post;
		Positive = positive;
	
	}
	
	public List<String> getSadrzaji() {
		return Sadrzaji;
	}
	public void setSadrzaji(List<String> sadrzaji) {
		Sadrzaji = sadrzaji;
	}
	public String getID_Apartman() {
		return ID_Apartman;
	}
	public void setID_Apartman(String iD_Apartman) {
		ID_Apartman = iD_Apartman;
	}
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public double getNumber_Rooms() {
		return Number_Rooms;
	}
	public void setNumber_Rooms(double number_Rooms) {
		Number_Rooms = number_Rooms;
	}
	public double getNumber_Guests() {
		return Number_Guests;
	}
	public void setNumber_Guests(double number_Guests) {
		Number_Guests = number_Guests;
	}
	public String getDate_for_Rent_Start() {
		return Date_for_Rent_Start;
	}
	public void setDate_for_Rent_Start(String date_for_Rent_Start) {
		Date_for_Rent_Start = date_for_Rent_Start;
	}
	public String getDate_for_Rent_End() {
		return Date_for_Rent_End;
	}
	public void setDate_for_Rent_End(String date_for_Rent_End) {
		Date_for_Rent_End = date_for_Rent_End;
	}
	public String getHost() {
		return Host;
	}
	public void setHost(String host) {
		Host = host;
	}
	public double getPrice_per_night() {
		return Price_per_night;
	}
	public void setPrice_per_night(double price_per_night) {
		Price_per_night = price_per_night;
	}
	public String getCheck_in_time() {
		return Check_in_time;
	}
	public void setCheck_in_time(String check_in_time) {
		Check_in_time = check_in_time;
	}
	public String getCheck_out_time() {
		return Check_out_time;
	}
	public void setCheck_out_time(String check_out_time) {
		Check_out_time = check_out_time;
	}
	public boolean isActive() {
		return Active;
	}
	public void setActive(boolean active) {
		Active = active;
	}
	public String getLatitude() {
		return Latitude;
	}
	public void setLatitude(String latitude) {
		Latitude = latitude;
	}
	public String getLongitude() {
		return Longitude;
	}
	public void setLongitude(String longitude) {
		Longitude = longitude;
	}
	public String getStreet() {
		return Street;
	}
	public void setStreet(String street) {
		Street = street;
	}
	public String getStreetnumber() {
		return Streetnumber;
	}
	public void setStreetnumber(String streetnumber) {
		Streetnumber = streetnumber;
	}
	public String getPlace() {
		return Place;
	}
	public void setPlace(String place) {
		Place = place;
	}
	public String getZip_post() {
		return Zip_post;
	}
	public void setZip_post(String zip_post) {
		Zip_post = zip_post;
	}
	public int getPositive() {
		return Positive;
	
	}
	public void setPositive(int positive) {
		Positive = positive;
	}

	
}
