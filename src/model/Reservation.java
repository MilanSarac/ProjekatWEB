package model;

import java.util.Date;

public class Reservation {

	private String ID_Apartman;
	private String OrderDate;
	private long NumberOfNights;
	private double TotalPrice;
	private String Status;
	private String MessageReservation;
	private String Guest;
	private String CreatedReservation;
	private String RejectedReservation;
	private String WithdrawalReservation;
	private String AcceptedReservation;
	private String CompletedReservation;


public Reservation(String orderDate, long numberOfNights,String iD_Apartman, double totalPrice,String guest,String messageReservation,String status) {
	super ();
	OrderDate = orderDate;
	NumberOfNights = numberOfNights;
	ID_Apartman=iD_Apartman;
	TotalPrice = totalPrice;
	Guest = guest;
	MessageReservation = messageReservation;
	Status=status;
}

	public String getID_Apartman() {
		return ID_Apartman;
	}

	public void setID_Apartman(String iD_Apartman) {
		ID_Apartman = iD_Apartman;
	}

	public double getTotalPrice() {
		return TotalPrice;
	}

	public String getOrderDate() {
		return OrderDate;
	}

	public void setOrderDate(String orderDate) {
		OrderDate = orderDate;
	}

	public long getNumberOfNights() {
		return NumberOfNights;
	}

	public void setNumberOfNights(long numberOfNights) {
		NumberOfNights = numberOfNights;
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

	public String getStatus() {
		return Status;
	}

	public void setStatus(String status) {
		Status = status;
	}

	public void setTotalPrice(double totalPrice) {
		TotalPrice = totalPrice;
	}

}