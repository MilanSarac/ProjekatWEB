package model;

public class LocationAddress {	
	
	private String Latitude;
	private String Longitude;
	private String Street;
	private String Streetnumber;
	private String Place;
	private String Zip_post;
	private String IDAparment;
	
	public LocationAddress() {}
	public LocationAddress (String latitude, String longitude,String street,String streetnumber,String place, String zip_post, String idApartment ) {
	super();

	this.Street = street ;
	this.Streetnumber = streetnumber ;
	this.Place = place;
	this.Zip_post = zip_post;
		Latitude = latitude;
		Longitude = longitude;
		IDAparment= idApartment;
	
}

	public String getIDAparment() {
		return IDAparment;
	}
	public void setIDAparment(String iDAparment) {
		IDAparment = iDAparment;
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

}
