package model;

public class Address {
	
	private String Street;
	private String Streetnumber;
	private String Place;
	private String Zip_post;
	
	public Address (String street,String streetnumber,String place, String zip_post ) {
		super();
	 Street = street ;
	 Streetnumber = streetnumber ;
	 Place = place;
	 Zip_post = zip_post;
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