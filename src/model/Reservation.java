package model;

import java.util.Date;

public class Reservation {

	private String IsBooked;
	private Date OrderDate;
	private int NumberOfNights;
	private int TotalPrice;
	private String MessageReservation;
	public String Guest;
	public String CreatedReservation;
	public String RejectedReservation;
	public String WithdrawalReservation;
	public String AcceptedReservation;
	public String CompletedReservation;


public Reservation(String isBooked, Date orderDate,int numberOfNights, int totalPrice, String messageReservation,String guest,
		String createdReservation,String rejectedReservation,String withdrawalReservation,String acceptedReservation,String completedReservation) {
	
	super ();
	
	IsBooked=isBooked;
	OrderDate = orderDate;
	NumberOfNights = numberOfNights;
	TotalPrice = totalPrice;
	MessageReservation = messageReservation;
	Guest = guest;
	CreatedReservation = createdReservation;
	RejectedReservation = rejectedReservation; 
	WithdrawalReservation = withdrawalReservation;
	AcceptedReservation = acceptedReservation;
	CompletedReservation = completedReservation;



}


public String getIsBooked() {
	return IsBooked;
}


public void setIsBooked(String isBooked) {
	IsBooked = isBooked;
}


public Date getOrderDate() {
	return OrderDate;
}


public void setOrderDate(Date orderDate) {
	OrderDate = orderDate;
}


public int getNumberOfNights() {
	return NumberOfNights;
}


public void setNumberOfNights(int numberOfNights) {
	NumberOfNights = numberOfNights;
}


public int getTotalPrice() {
	return TotalPrice;
}


public void setTotalPrice(int totalPrice) {
	TotalPrice = totalPrice;
}


public String getMessageReservation() {
	return MessageReservation;
}


public void setMessageReservation(String messageReservation) {
	MessageReservation = messageReservation;
}


public String getGuest() {
	return Guest;
}


public void setGuest(String guest) {
	Guest = guest;
}


public String getCreatedReservation() {
	return CreatedReservation;
}


public void setCreatedReservation(String createdReservation) {
	CreatedReservation = createdReservation;
}


public String getRejectedReservation() {
	return RejectedReservation;
}


public void setRejectedReservation(String rejectedReservation) {
	RejectedReservation = rejectedReservation;
}


public String getWithdrawalReservation() {
	return WithdrawalReservation;
}


public void setWithdrawalReservation(String withdrawalReservation) {
	WithdrawalReservation = withdrawalReservation;
}


public String getAcceptedReservation() {
	return AcceptedReservation;
}


public void setAcceptedReservation(String acceptedReservation) {
	AcceptedReservation = acceptedReservation;
}


public String getCompletedReservation() {
	return CompletedReservation;
}


public void setCompletedReservation(String completedReservation) {
	CompletedReservation = completedReservation;
}
}