package model;

public class Location {


	private String Latitude;
	private String Longitude;
	private String Location_Adress;
	
	
	public Location (String latitude, String longitude,String location_adress) {
	super();
	Latitude = latitude;
	Longitude = longitude;
	Location_Adress = location_adress;
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


	public String getLocation_Adress() {
		return Location_Adress;
	}


	public void setLocation_Adress(String location_adress) {
		Location_Adress = location_adress;
	}

}
