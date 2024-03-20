
 

<%@page import="com.user.dao.UserDao"%>
<%@page import="com.itextpdf.text.log.SysoCounter"%>

<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit User Details</title>
    
    <script src="/User/staticContent/js/jquery-1.12.3.min.js"></script>
    <script src="/User/staticContent/shree/buttons.html5.min.js" type="text/javascript"></script>
    <script src="/User/staticContent/shree/buttons.print.min.js" type="text/javascript"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
    <script type="text/javascript">
        function Back() {
            window.location = "login.jsp";
        }
        function updateFormFields() {
            var selectName = document.getElementById("username").value;

            // Use AJAX to fetch data dynamically based on the selected ID
            $.ajax({
                type: "GET",
                url: "/User/Controller?action=fetchUserDetailsByName",
                data: { username: selectName },
                dataType: "json",
                success: function(data) {
                    try {
                        // Update the form fields with the fetched data
                        document.getElementById("firstname").value = data.firstname;
                        document.getElementById("lastname").value = data.lastname;
                        document.getElementById("contact_no").value = data.contact_no;
                        document.getElementById("address").value = data.address;
                        document.getElementById("username").value = data.username;
                        document.getElementById("password").value = data.password;
                        document.getElementById("re_password").value = data.re_password;
                        document.getElementById("city").value = data.city;
                        document.getElementById("pan_no").value = data.pan_no;
                        document.getElementById("email").value = data.email;
                       

                        // Remove the selected option from the dropdown
                        $("#UserIDlist option[value='" + selectName + "']").remove();
                    } catch (e) {
                        console.error("Error updating form fields: " + e);
                    }
                },
                error: function(error) {
                    console.error("Error fetching data: " + error.responseText);
                }
            });
        }

        // Add a function to reset the form fields
        function resetFormFields() {
            document.getElementById("username").value = "";
            document.getElementById("firstname").value = "";
            document.getElementById("lastname").value = "";
            document.getElementById("contact_no").value = "";
            document.getElementById("address").value = "";
            document.getElementById("password").value = "";
            document.getElementById("re_password").value = "";
            document.getElementById("city").value = "";
            document.getElementById("pan_no").value = "";
            document.getElementById("email").value = "";
           
        }

        function submitForm() {
            document.forms["userForm"].submit();
        }

        </script>
</head>

<body>
    <h2 align="center" style="color: purple; font-size: 50px;">Edit User Form</h2>
<div class="row">
		<div class="col-md-12" align="center">
		
			<hr style="border-top-color: blue;">
		</div>
	</div>
	
	<form name="userForm" action="/User/Controller?action=updateUserDetails" method="post">
        
        <div class="col-md-12" align="center" style=" margin-top: 40px;">
        
        <label for="username" style="font-size: 30px;"><b>User Name:</b></label><a style="margin-left: 40px"></a> 
        <i class="fa fa-user" style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>
         <% 
         UserDao dao = new UserDao();
           List Idlist = dao.getByUserName(request, response);
           %>
           
           
        <input list="UserIDlist" type="text" id="username" name="username" placeholder="  User Name" onchange="updateFormFields()"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required><a
				style="margin-left: 20px" ></a> 
        <datalist id="UserIDlist">
          <% for (int i = 0; i < Idlist.size(); i++) { %>
                <option data-value="<%=Idlist.get(i)%>"><%=Idlist.get(i)%></option>
            <% } %>
                         
        </datalist>

			<label for="firstname" style="font-size: 30px;"><b>First Name<sup style="color: red;">*</sup></b></label><a style="margin-left: 35px"></a> 
			<i class="fa fa-user"
			 style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>

			<input type="text" id="firstname" name="firstname"
				placeholder="  First Name"
				style="border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required><a
				style="margin-left: 10px" ></a><br> 
				
				<label for="lastname" style="font-size: 30px;"><b>Last
					Name<sup style="color: red;">*</sup>
			</b></label><a style="margin-left: 25px"></a> <i class="fa fa-user"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>
			
			<input type="text" id="lastname" name="lastname"
				placeholder="  Last Name"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required>
				<a
				style="margin-left: 20px" ></a>

			<label for="contact_no" style="font-size: 30px;"><b>Contact No<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 30px"></a> <i
				class="bi bi-telephone-fill"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text"   maxlength="10" id="contact_no" name="contact_no"
				placeholder="  10 Digit Contact No"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;"
				onblur="validateContactNumber()" required> <span
				id="contactNumberError"></span> <br>
				
				<label for="email" style="font-size: 30px;"><b> Email <sup style="color: red;">*</sup></b></label>
			<a style="margin-left: 85px"></a> <i class="fa fa-envelope"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>
			
			<input type="email" id="email" name="email"
				placeholder="  Email"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required />
				<a	style="margin-left: 20px" ></a>
				
				<label for="address" style="font-size: 30px;"><b> Address<sup style="color: red;">*</sup></b></label>
			<a style="margin-left: 80px"></a> <i class="bi bi-geo-alt-fill"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="address" name="address"
				placeholder="  Address Line 1"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required><br>


				 <label for="password" style="font-size: 30px;"><b>
					Password<sup style="color: red;">*</sup>
			</b></label><a style="margin-left: 45px"></a> <i class='fa fa-hand-point-right'
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="password" name="password"
				placeholder="  Password"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required>

<a
				style="margin-left: 20px"></a>
			<label for="re_password" style="font-size: 30px;"><b> Re-Password<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 12px"></a> <i
				class='fa fa-hand-point-right'
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="re_password" name="re_password"
				placeholder="  re-password"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required><br>
				 

			<label for="pan_no" style="font-size: 30px;" ><b> Pan No<sup style="color: red;">*</sup></b></label><a
				style="margin-left: 75px"></a> <i class='fa fa-hand-point-right'
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="pan_no" name="pan_no" placeholder="  Pan No"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required><a
				style="margin-left: 40px"></a>
				

				<label for="city" style="font-size: 30px;"><b>City<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 110px"></a> <i
				class="bi bi-geo-alt-fill"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="city" name="city" placeholder="  City"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required>
				</div>
	

         <div align="center">
		<div class="form-submit-btn">
			

			<input type="submit" name="btn" id="btn" value="Update"
				style="background-color: green; color: white; padding: 5px; border-radius: 15px; width: 110px; height: 50px; font-size: 25px;"/> 
				
				<button type="button"  name="btn" id="btn" onclick="resetFormFields()" style="background-color: red; color: white; padding: 5px; border-radius: 15px; width: 110px; height: 50px; font-size: 25px;">Cancel</button>
			
			<input type="button" name="btn" id="btn" value="Back" onclick="history.back()""
				style="background-color: blue; color: white; padding: 5px; border-radius: 15px; width: 110px; height: 50px; font-size: 25px;" /> 

		
		
		</div>
		</div>
		</form>
</body>

<style>

#body {margin:0;

align: center;
font-size: 10px;

}
.input{
align: center;
font-size: 10px;
}

.form-submit-btn {
	margin-top: 50px;
}


</style>
</html>

