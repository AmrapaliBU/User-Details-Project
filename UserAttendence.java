package com.user.hibernate;


import java.io.Serializable;
import java.util.Date;

public class UserAttendence implements Serializable {
	
	private long userId;
	private String firstname;
	private String lastname;
	private Date date;
	private String present;
	private String absent;
	private String halfday;
	private String holiday;
	private String paidleave;
	//private String attendence;
	public UserAttendence() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserAttendence(long userId, String firstname, String lastname, Date date, String present, String absent,
			String halfday, String holiday, String paidleave) {
		super();
		this.userId = userId;
		this.firstname = firstname;
		this.lastname = lastname;
		this.date = date;
		this.present = present;
		this.absent = absent;
		this.halfday = halfday;
		this.holiday = holiday;
		this.paidleave = paidleave;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getPresent() {
		return present;
	}
	public void setPresent(String present) {
		this.present = present;
	}
	public String getAbsent() {
		return absent;
	}
	public void setAbsent(String absent) {
		this.absent = absent;
	}
	public String getHalfday() {
		return halfday;
	}
	public void setHalfday(String halfday) {
		this.halfday = halfday;
	}
	public String getHoliday() {
		return holiday;
	}
	public void setHoliday(String holiday) {
		this.holiday = holiday;
	}
	public String getPaidleave() {
		return paidleave;
	}
	public void setPaidleave(String paidleave) {
		this.paidleave = paidleave;
	}
	@Override
	public String toString() {
		return "UserAttendence [userId=" + userId + ", firstname=" + firstname + ", lastname=" + lastname + ", date="
				+ date + ", present=" + present + ", absent=" + absent + ", halfday=" + halfday + ", holiday=" + holiday
				+ ", paidleave=" + paidleave + "]";
	}
	
}
