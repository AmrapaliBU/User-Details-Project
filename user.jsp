<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Form</title>
<script src="/User/staticContent/js/jquery.min.js"></script>

<script src="/User/staticContent/js/user.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<script> 
function SendUserList(){
	window.location = "userlist.jsp"
}
function SendAttendenceList(){
	window.location = "attendenceList.jsp"
}
function updateData(){
	window.location = "userEdit.jsp";
}
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
</script>

<script>
        function validateContactNumber() {
            var contact_no = document.getElementById("contact_no").value;
            var regex = /^\d{10}$/; // Assuming a 10-digit contact number
            
            if (!regex.test(contact_no)) {
                alert("Please enter a valid 10-digit contact number");
                $('#contact_no').val('');
                return false;
            } else {
                document.getElementById("contactNumberError").innerHTML = "";
                return true;
            }
        }
 
    </script>

</head>

<body>

<div class="icon-bar">

<form method="post" action="home.jsp">

  <button  class="btn"><i class="fa fa-home"></i>Home</button> 
  <button class="btn"><i class='fas fa-address-book' ></i>Master</button> 
  <button class="btn"><i class='fas fa-user-alt' ></i>Purchase</button> 
  <button class="btn"><i class='fas fa-file-invoice-dollar'></i>Billing</button>
  <button class="btn"><i class="fa fa-user"></i>Stock</button> 
  <button class="btn"><i class='far fa-edit'></i>CashBook</button> 
  <button class="btn"><i class="fa fa-file-text"></i>Reports</button> 
  <button class="btn"><i class='far fa-edit'></i>Copy Bill</button> 
  <button class="btn"><i class='fas fa-address-book'></i>HR</button> 
</form>
<form align="right" name="form1" method="post" action="login.jsp">
  <label class="logoutLblPos">
  <input name="submit2" type="submit" id="submit2" value="log out" style="background-color: #04AA6D; color: white; padding: 5px; border-radius: 13px; width: 100px; height: 40px; font-size: 20px;">
  </label>
</form>
</div>
<div class="form-container">

	
	<h3 align="center" style="color: purple; font-size: 40px;">User Details</h3>
	<div class="row">
		<div class="col-md-12" align="center">
			<hr style="border-top-color: blue;">
		</div>
		</div>
	</div>

	<div class="form">
<form method="post">
<div class="col-md-12" align="center" style=" margin-top: 40px;">

			<label for="firstname" style="font-size: 30px;"><b>First Name<sup style="color: red;">*</sup></b></label><a style="margin-left: 40px"></a> 
			<i class="fa fa-user"
			 style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>

			<input type="text" id="firstname" name="firstname"
				placeholder="  First Name"
				style="border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><a
				style="margin-left: 20px" ></a> 
				 
				
				<label for="lastname" style="font-size: 30px;"><b>Last
					Name<sup style="color: red;">*</sup>
			</b></label><a style="margin-left: 45px"></a> <i class="fa fa-user"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>
			
			<input type="text" id="lastname" name="lastname"
				placeholder="  Last Name"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><br>
 

              <label for="contact_no" style="font-size: 30px;"><b>Contact No<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 45px"></a> <i
				class="bi bi-telephone-fill"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text"   maxlength="10" id="contact_no" name="contact_no"
				placeholder="  10 Digit Contact No"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;"
				onblur="validateContactNumber()" required /> <span
				id="contactNumberError"></span><a style="margin-left: 30px"></a> 
				
				<label for="email" style="font-size: 30px;"><b> Email <sup style="color: red;">*</sup></b></label>
			<a style="margin-left: 95px"></a> <i class="fa fa-envelope"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>
			
			<input type="email" id="email" name="email"
				placeholder="  Email"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required /><br>
  

				<label for="address" style="font-size: 30px;"><b> Address<sup style="color: red;">*</sup></b></label>
			<a style="margin-left: 100px"></a> <i class="bi bi-geo-alt-fill"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="address" name="address"
				placeholder="  Address Line 1"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required />
				<a style="margin-left: 30px"></a>
  

			<label for="username" style="font-size: 30px;"><b> User Name<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 37px"></a> <i
				class="fa fa-user"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 25px;"></i>
			
			<input style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;"
				type="text" id="username" name="username" placeholder="  User Name" required /><a
				style="margin-left: 10px"></a><br>
				

				 <label for="password" style="font-size: 30px;"><b>
					Password<sup style="color: red;">*</sup>
			</b></label><a style="margin-left: 80px"></a> <i class='fa fa-hand-point-right'
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="password" name="password"
				placeholder="  Password"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required />


            <a style="margin-left: 20px"></a>
			<label for="re_password" style="font-size: 30px;"><b> Re-Password<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 20px"></a> <i
				class='fa fa-hand-point-right'
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="re_password" name="re_password"
				placeholder="  re-password"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required /><a
				style="margin-left: 12px"></a><br>
				

			<label for="pan_no" style="font-size: 30px;" ><b> Pan No<sup style="color: red;">*</sup></b></label><a
				style="margin-left: 100px"></a> <i class='fa fa-hand-point-right'
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="pan_no" name="pan_no" placeholder="  Pan No"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required />
			
				<a style="margin-left: 40px"></a>
				<label for="city" style="font-size: 30px;"><b>City<sup
					style="color: red;">*</sup></b></label><a style="margin-left: 110px"></a> <i
				class="bi bi-geo-alt-fill"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 4px; width: 30px; height: 30px; font-size: 30px;"></i>
			
			<input type="text" id="city" name="city" placeholder="  City"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required />
				
				
				
				</div>
				</form>
				
			</div>	
	<div align="center">
		<div class="form-submit-btn">

			<input type="submit" name="btn" id="btn" value="Submit"
				style="background-color: green; color: white; padding: 5px; border-radius: 13px; width: 110px; height: 45px; font-size: 25px;"
				onclick="user_values()" /> 
				
				<button type="button"  name="btn" id="btn" onclick="resetFormFields()" style="background-color: red; color: white; padding: 5px; border-radius: 13px; width: 110px; height: 45px; font-size: 25px;">Cancel</button>
				
			<input type="button" name="btn" id="btn" value="List"
			style="background-color: blue; color: white; padding: 5px; border-radius: 10px; width: 110px; height: 45px; font-size: 25px;"
				onclick="SendUserList()" />
				
				 <input type="button" name="btn"
				id="btn" value="Edit"
				style="background-color: blue; color: white; padding: 5px; border-radius: 10px; width: 110px; height: 45px; font-size: 25px;" onclick="updateData()"/>
				
				<input type="button" name="btn" id="btn" value="Attendence List"
			style="background-color: blue; color: white; padding: 5px; border-radius: 10px; width: 200px; height: 45px; font-size: 25px;"
				onclick="SendAttendenceList()" />
</div>
		</div>

	
</body>
<style>

#body {
    background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
    font-family: 'Poppins', sans-serif;
    font-size:  500px;
}
 .form-container .error-msg {
        color: red;
        font-size: 12px;
        display: block;
        margin-left: 180px; /* Space between field and error message */
    }

.input{
align: center;
font-size: 30px;
}

.icon-bar {
  width: 100%;
  background-color: #555;
  overflow: auto;
  
}

.icon-bar a {
  float: center;
  width: 10%;
  height: 10px;
  text-align: center;
  padding: 10px 0;
  transition: all 0.3s ease;
  color: green;
  font-size: 10px;
}

.icon-bar a:hover {
  background-color: #000;
}
.btn {
  background-color: #555;
  border: none;
  color: white;
  padding: 12px 16px;
  font-size: 16px;
  cursor: pointer;
}

#form {
	margin-center: 20px;
}

p {
	border: 2px solid powderblue;
	padding: 30px;
}

.form-submit-btn {
	margin-top: 50px;
}
</style>
</html>