package com.user.utility;

import java.io.IOException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.user.dao.UserDao;
import com.user.helper.UserHelper;
import com.user.hibernate.UserHibernate;
@WebServlet("/Controller")
public class Controller extends HttpServlet {

	private String toJson(Object data) {
		Gson gson = new GsonBuilder().setPrettyPrinting().disableHtmlEscaping().create();
		return gson.toJson(data);
	}

	public String user_values(HttpServletRequest request, HttpServletResponse response) {

		System.out.println("In Controller");
		UserHelper eh = new UserHelper();
		eh.user_values(request, response);
		return "Data Added";
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		if ("fetchUserDetailsByName".equals(action)) {
			fetchUserDetailsByName(request, response);
		} else {
			response.getWriter().write("Invalid action");
		}
	}

	public String fetchUserDetailsByName(HttpServletRequest request, HttpServletResponse response) throws IOException {
	    try {
	       String userName = request.getParameter("username");

	        UserDao dao = new UserDao();
	        UserHibernate user = dao.getUserListByName(userName);

	        if (user != null) {
	            Map<String, String> userDetails = new HashMap<>();
	            userDetails.put("firstname", user.getFirstname());
	            userDetails.put("lastname", user.getLastname());
	            userDetails.put("contact_no", user.getContact_no());
	            userDetails.put("address", user.getAddress());
	            userDetails.put("username", user.getUsername());
	            userDetails.put("password", user.getPassword());
	            userDetails.put("re_password", user.getRe_password());
	            userDetails.put("city", user.getCity());
	            userDetails.put("pan_no", user.getPan_no());
	            userDetails.put("email", user.getEmail());

	            String jsonResponse = toJson(userDetails);

	            System.out.println("The Data are come: " + jsonResponse);

	            response.setContentType("application/json");
	            response.getWriter().write(jsonResponse);
	        } else {
	            String jsonResponse = toJson("User not found");

	            System.out.println("The Data are come: " + jsonResponse);

	            response.setContentType("application/json");
	            response.getWriter().write(jsonResponse);
	        }
	    } catch (NumberFormatException e) {
	        String jsonResponse = toJson("Invalid ID");

	        System.out.println("The Data are come: " + jsonResponse);

	        response.setContentType("application/json");
	        response.getWriter().write(jsonResponse);
	    }

	    return null; // or an appropriate message if needed
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	    String action = request.getParameter("action");

	    if ("updateUserDetails".equals(action)) {
	    	updateUserDetails(request, response);
	    } else {
	        response.getWriter().write("Invalid action");
	    }
	}
	
	public void updateUserDetails(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            String userName = request.getParameter("username");
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

            UserDao dao = new UserDao();
            UserHibernate user = dao.getUserListByName(userName);

            if (user != null) {
                // Update the student details
                user.setFirstname(firstname);
                user.setLastname(lastname);
                user.setContact_no(contact_no);
                user.setAddress(address);
                user.setUsername(username);
                user.setPassword(password);
                user.setRe_password(re_password);
                user.setCity(city);
                user.setPan_no(pan_no);
                user.setEmail(email);

                // Save the updated details to the database
                dao.updateUserDetails(user);

                response.getWriter().write("User details updated successfully");
            } 
        } catch (NumberFormatException e) {
            e.printStackTrace();
            response.getWriter().write("Error updating User details: " + e.getMessage());
        }
        }
	
	public String user_data(HttpServletRequest request, HttpServletResponse response) throws ParseException {

		System.out.println("In Controller");
		UserHelper eh = new UserHelper();
		eh.user_data(request, response);
		return "Data Added";
	}
    }
