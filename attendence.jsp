<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="/User/staticContent/js/jquery.min.js"></script>

<script src="/User/staticContent/js/user.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
<script>

function SendAttendenceList(){
	window.location = "jsp/attendenceList.jsp"
}

</script>
</head>
<body>

<h3 align="center" style="color: purple; font-size: 40px;">User Attendence </h3>
	<div class="row">
		<div class="col-md-12" align="center" >
			<hr style="border-top-color: blue;">
		</div>
		</div>
		<div align="center"  style=" margin-top: 40px;">
         <label for="firstname" style="font-size: 30px;"><b>First Name</b></label>
         <a style="margin-left: 45px"></a>
         <input type="text" id="firstname" name="firstname"
				placeholder="  First Name"
				style="border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><a
				style="margin-left: 20px" ></a> 
				 
				
				<label for="lastname" style="font-size: 30px;"><b>Last Name</b></label>
				<a style="margin-left: 45px"></a>
			<input type="text" id="lastname" name="lastname"
				placeholder="  Last Name"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><br>
 <br>
 
            <label for="date" style="font-size: 30px;"><b>Date</b></label><a style="margin-left: 125px"></a>
			<input type="date" id="date" name="date"
				placeholder="  Date"
				style="border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><a
				style="margin-left: 35px" ></a> 
				 
				
				<label for="present" style="font-size: 30px;"><b>Present</b></label>
			<a style="margin-left: 75px"></a>
			<input type="text" id="present" name="present"
				placeholder="  present"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><br><br>
 
            <label for="absent" style="font-size: 30px;"><b>Absent</b></label>
            <a style="margin-left: 95px"></a>
			<input type="text" id="absent" name="absent"
				placeholder="  absent"
				style="border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><a
				style="margin-left: 25px" ></a> 
				 
				
				<label for="halfday" style="font-size: 30px;"><b>Halfday</b></label>
				<a style="margin-left: 75px"></a>
			<input type="text" id="halfday" name="halfday"
				placeholder="  halfday"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><br><br>
 
            <label for="holiday" style="font-size: 30px;"><b>Holiday</b></label>
            <a style="margin-left: 85px"></a>
			<input type="text" id="holiday" name="holiday"
				placeholder="  holiday"
				style="border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><a
				style="margin-left: 25px" ></a> 
				 
				
				<label for="paidleave" style="font-size: 30px;"><b>Paid leave</b></label>
				<a style="margin-left: 50px"></a>
			<input type="text" id="paidleave" name="paidleave"
				placeholder="  paidleave"
				style="color: orange; border: 2px solid orange; padding: 3px; border-radius: 7px; width: 300px; height: 35px; font-size: 25px;" required/><br>
 
 </div>
 <div align="center">
 <div class="form-submit-btn">
 <input type="submit" name="btn" id="btn" value="Submit"
				style="background-color: green; color: white; padding: 5px; border-radius: 13px; width: 110px; height: 45px; font-size: 25px;"
				onclick="user_data()" /> 
				
			<input type="button" name="btn" id="btn" value="Attendence List"
			style="background-color: blue; color: white; padding: 5px; border-radius: 10px; width: 200px; height: 45px; font-size: 25px;"
				onclick="SendAttendenceList()" />	
				</div>
				</div>
</body>
<style>

.form-submit-btn {
	margin-top: 50px;
}
</style>
</html>