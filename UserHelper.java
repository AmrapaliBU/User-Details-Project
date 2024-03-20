package com.user.helper;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.user.dao.UserDao;
import com.user.hibernate.UserAttendence;
import com.user.hibernate.UserHibernate;

public class UserHelper {

	public void user_values(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("In Helper");

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String contact_no = request.getParameter("contact_no");
		String address = request.getParameter("address");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String re_password = request.getParameter("re_password");
		String city = request.getParameter("city");
		String pan_no = request.getParameter("pan_no");
		String email = request.getParameter("email");

		UserHibernate dhh = new UserHibernate();

		dhh.setFirstname(firstname);
		dhh.setLastname(lastname);
		dhh.setContact_no(contact_no);
		dhh.setAddress(address);
		dhh.setUsername(username);
		dhh.setPassword(password);
		dhh.setRe_password(re_password);
		dhh.setCity(city);
		dhh.setPan_no(pan_no);
		dhh.setEmail(email);

		UserDao dd = new UserDao();
		dd.saveUser(dhh);

	}

	public void user_data(HttpServletRequest request, HttpServletResponse response) throws ParseException {
		// TODO Auto-generated method stub
		System.out.println("In Helper");

		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		
		String Date = request.getParameter("date");
		Date date = new SimpleDateFormat("yyyy-MM-dd").parse(Date);
		System.out.println("date is"+date);
	
		String present = request.getParameter("present");
		String absent = request.getParameter("absent");
		String halfday = request.getParameter("halfday");
		String holiday = request.getParameter("holiday");
		String paidleave = request.getParameter("paidleave");

		UserAttendence dhh = new UserAttendence();

		dhh.setFirstname(firstname);
		dhh.setLastname(lastname);
		dhh.setDate(date);
		dhh.setPresent(present);
		dhh.setAbsent(absent);
		dhh.setHalfday(halfday);
		dhh.setHoliday(holiday);
		dhh.setPaidleave(paidleave);


		UserDao dd = new UserDao();
		dd.saveData(dhh);
	}

}
