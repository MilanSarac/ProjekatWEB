package model;

public class Comment {
	private String Sender;
	private String ReferedToApartment;
	private String Text;
	private String Rating;
	private boolean Active;
	
	public Comment (String sender,String referedToApartment,String rating,String text,boolean active )
	{
		super();
		Sender=sender;
		ReferedToApartment=referedToApartment;
		Text=text;
		Rating=rating ;
		Active=active;
}

	public String getSender() {
		return Sender;
	}

	public void setSender(String sender) {
		Sender = sender;
	}

	public String getReferedToApartment() {
		return ReferedToApartment;
	}

	public void setReferedToApartment(String referedToApartment) {
		ReferedToApartment = referedToApartment;
	}

	public String getText() {
		return Text;
	}

	public void setText(String text) {
		Text = text;
	}

	public String getRating() {
		return Rating;
	}

	public void setRating(String rating) {
		Rating = rating;
	}
	public boolean isActive() {
		return Active;
	}

	public void setActive(boolean active) {
		Active = active;
	}
}