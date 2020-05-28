package model;

import java.util.Date;

public class Apartment {
	
	private String Type;//Tip (ceo apartman, soba)
	private int Number_Rooms;//Broj soba
	private int Number_Guests;//Broj gostiju
	private String Alocation;//Lokacija
	private Date Date_for_Rent;//Datumi za izdavanje (zadaju Domacini)
	private Date Avaliable_by_Date;//Dostupnost po datumima
	private String Host;//Domacin
	private String Comments_visited;//Komentari za apartman koje daju gosti koji su posetili apartman
	private String Pictures;
	private int Price_per_night;//Cena po noci
	private Date Check_in_time;//Vreme za prijavu (inicijalno 2 PM)
	private Date Check_out_time;//Vreme za odjavu (inicijalno 10 AM)
	private String Active_or_Inactive;//Status (Aktivno ili Neaktivno)
	private String Amenities;// pogodnosti, Lista sadrzaja apartmana (Amenities)
	private String ListReservation;//Lista rezervacija
	
	public Apartment(String type, int number_Rooms,int number_Guests,String alocation,
			Date date_for_Rent, Date avaliable_by_Date, String host,String comments_visited ,String pictures,int price_per_night, Date check_in_time ,
			Date check_out_time, String active_or_Inactive, String amenities ,String listReservation  ) {
	super();
	Type=type;
	Number_Rooms= number_Rooms;
	Number_Guests=number_Guests;
	Alocation=alocation;
	Date_for_Rent=date_for_Rent;
	Avaliable_by_Date=avaliable_by_Date;
	Host=host;
	Comments_visited=comments_visited;
	Pictures=pictures;
	Price_per_night=price_per_night;
	Check_in_time=check_in_time;
	Check_out_time=check_out_time;
	Active_or_Inactive=active_or_Inactive;
	Amenities=amenities;
	ListReservation=listReservation;
	}
	
	
	
	public String getType() {
		return Type;
	}
	public void setType(String type) {
		Type = type;
	}
	public int getNumber_Rooms() {
		return Number_Rooms;
	}
	public void setNumber_Rooms(int number_Rooms) {
		Number_Rooms = number_Rooms;
	}
	public int getNumber_Guests() {
		return Number_Guests;
	}
	public void setNumber_Guests(int number_Guests) {
		Number_Guests = number_Guests;
	}
	public String getAlocation() {
		return Alocation;
	}
	public void setAlocation(String alocation) {
		Alocation = alocation;
	}
	public Date getDate_for_Rent() {
		return Date_for_Rent;
	}
	public void setDate_for_Rent(Date date_for_Rent) {
		Date_for_Rent = date_for_Rent;
	}
	public Date getAvaliable_by_Date() {
		return Avaliable_by_Date;
	}
	public void setAvaliable_by_Date(Date avaliable_by_Date) {
		Avaliable_by_Date = avaliable_by_Date;
	}
	public String getHost() {
		return Host;
	}
	public void setHost(String host) {
		Host = host;
	}
	public String getComments_visited() {
		return Comments_visited;
	}
	public void setComments_visited(String comments_visited) {
		Comments_visited = comments_visited;
	}
	public String getPictures() {
		return Pictures;
	}
	public void setPictures(String pictures) {
		Pictures = pictures;
	}
	public int getPrice_per_night() {
		return Price_per_night;
	}
	public void setPrice_per_night(int price_per_night) {
		Price_per_night = price_per_night;
	}
	public Date getCheck_in_time() {
		return Check_in_time;
	}
	public void setCheck_in_time(Date check_in_time) {
		Check_in_time = check_in_time;
	}
	public Date getCheck_out_time() {
		return Check_out_time;
	}
	public void setCheck_out_time(Date check_out_time) {
		Check_out_time = check_out_time;
	}
	public String getActive_or_Inactive() {
		return Active_or_Inactive;
	}
	public void setActive_or_Inactive(String active_or_Inactive) {
		Active_or_Inactive = active_or_Inactive;
	}
	public String getAmenities() {
		return Amenities;
	}
	public void setAmenities(String amenities) {
		Amenities = amenities;
	}
	public String getListReservation() {
		return ListReservation;
	}
	public void setListReservation(String listReservation) {
		ListReservation = listReservation;
	}
	
}
