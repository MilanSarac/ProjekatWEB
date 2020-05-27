package model;

public class Address {
	
	public String Street;
	public int Streetnumber;
	public String Place;
	public int Zip_post;
	
	public Address (String street,int streetnumber,String place, int zip_post ) {
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

	public int getStreetnumber() {
		return Streetnumber;
	}

	public void setStreetnumber(int streetnumber) {
		Streetnumber = streetnumber;
	}

	public String getPlace() {
		return Place;
	}

	public void setPlace(String place) {
		Place = place;
	}

	public int getZip_post() {
		return Zip_post;
	}

	public void setZip_post(int zip_post) {
		Zip_post = zip_post;
	}
	
	
}