package com.user.hibernate;

public class UserHibernate {

	private Long id;
	private String firstname;
	private String lastname;
	private String contact_no;
	private String address;
	private String username;
	private String password;
	private String re_password;
	private String city;
	private String pan_no;
	private String email;
	public UserHibernate() {
		super();
		// TODO Auto-generated constructor stub
	}
	public UserHibernate(Long id, String firstname, String lastname, String contact_no, String address, String username,
			String password, String re_password, String city, String pan_no, String email) {
		super();
		this.id = id;
		this.firstname = firstname;
		this.lastname = lastname;
		this.contact_no = contact_no;
		this.address = address;
		this.username = username;
		this.password = password;
		this.re_password = re_password;
		this.city = city;
		this.pan_no = pan_no;
		this.email = email;
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
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
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRe_password() {
		return re_password;
	}
	public void setRe_password(String re_password) {
		this.re_password = re_password;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getPan_no() {
		return pan_no;
	}
	public void setPan_no(String pan_no) {
		this.pan_no = pan_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "UserHibernate [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", contact_no="
				+ contact_no + ", address=" + address + ", username=" + username + ", password=" + password
				+ ", re_password=" + re_password + ", city=" + city + ", pan_no=" + pan_no + ", email=" + email + "]";
	}
	
}
