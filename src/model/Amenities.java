package model;

public class Amenities {
	

	private String ID_Amenities;
	private String Wifi;
	private String Tv;
	private String AirConditioning;
	private String Elevator;
	private String Parking;
	private String Kitchen;
	private String Iron;
	private String Washing_machine;

	public Amenities(String iD_Amenities,String wifi, String tv,String airConditioning,
			String elevator,String parking,String kitchen,String iron,String washing_machine) {
	super();
	ID_Amenities=iD_Amenities;
	Wifi=wifi;
	Tv=tv;
	AirConditioning=airConditioning;
	Elevator=elevator;
	Parking=parking;
	Kitchen=kitchen;
	Iron=iron;
	Washing_machine=washing_machine;
}

	public String getID_Amenities() {
		return ID_Amenities;
	}

	public void setID_Amenities(String  iD_Amenities) {
		ID_Amenities = iD_Amenities;
	}

	public String getWifi() {
		return Wifi;
	}

	public void setWifi(String wifi) {
		Wifi = wifi;
	}

	public String getTv() {
		return Tv;
	}

	public void setTv(String tv) {
		Tv = tv;
	}

	public String getAirConditioning() {
		return AirConditioning;
	}

	public void setAirConditioning(String airConditioning) {
		AirConditioning = airConditioning;
	}

	public String getElevator() {
		return Elevator;
	}

	public void setElevator(String elevator) {
		Elevator = elevator;
	}

	public String getParking() {
		return Parking;
	}

	public void setParking(String parking) {
		Parking = parking;
	}

	public String getKitchen() {
		return Kitchen;
	}

	public void setKitchen(String kitchen) {
		Kitchen = kitchen;
	}

	public String getIron() {
		return Iron;
	}

	public void setIron(String iron) {
		Iron = iron;
	}

	public String getWashing_machine() {
		return Washing_machine;
	}

	public void setWashing_machine(String washing_machine) {
		Washing_machine = washing_machine;
	}
	
	
}