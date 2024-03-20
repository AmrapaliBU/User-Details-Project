<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login </title>
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
   
    <script >
    
    function data(){
  	  
  	  var username = document.getElementById("username").value; 
  	  var password = document.getElementById("password").value; 
  	  var re_password = document.getElementById("re_password").value; 
  	  
  	  if(username ==""|| password =="" || re_password=="")
  		  {
  		  alert("All fields are mandatory");
  		  return false;
  		  }
  	  else if(password != re_password){
  		  alert("Please Enter same password");
  		  return false;
  	  }
  	  else{
  		  true;
  	  }
    }
    function resetFields() {
        document.getElementById("username").value = "";
        document.getElementById("password").value = "";
        document.getElementById("re_password").value = "";
    }

    </script>
    
    <style>
body {
     background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
    font-family: 'Poppins', sans-serif;
    font-size:  500px;
}

#form {
    width: 350px;
    margin: 10vh auto 0 auto;
    padding: 10px;
    background-color: orange;
    border-radius: 10px;
    font-size: 25px;
}

#form h1 {
    color: #0f2027;
    text-align: center;
}

.background {
        background-image: url('/User/staticContent/image/shop.jpg');
        background-size: cover; 
        background-repeat: no-repeat;
        z-index: -1;
    }
    
.form-submit-btn {
    padding: 10px;
    margin-top: 20px;
    width: 100%;
    color: white;
    border: none;
    border-radius: 10px;
}

.input-control {
    display: flex;
    flex-direction: column;
}

.input-control input {
    border: 2px solid #f0f0f0;
	border-radius: 4px;
	display: block;
	font-size: 17px;
	padding: 13px;
	width: 100%;
}

.input-control input:focus {
    outline: 0;
}

.input-control.success input {
    border-color: #09c372;
}

.input-control.error input {
    border-color: #ff3860;
}

.input-control .error {
    color: #ff3860;
    font-size: 15px;
    height: 10px;
}


</style>
</head>
<body class="background">


    <div class="container">
   
        <form id="form"   onsubmit="return data()" action="jsp/user.jsp">
        
        
        
            <h1 style="color: purple">Login</h1>
            <div class="input-control">
                <label for="username">Username</label>
                <input id="username" name="username" type="text" >
                
            </div>
            <div class="input-control">
                <label for="password">Password</label>
                <input id="password"name="password" type="password" >
                 
                
            </div>
            <div class="input-control">
                <label for="re_password">Re-Password</label>
                <input id="re_password"name="re_password" type="password" >
                
            </div>
           <div align="center">
		<div class="form-submit-btn">
			

			<input type="submit" name="btn" id="btn" value="login"
				style="background-color: green; color: white; padding: 5px; border-radius: 20px; width: 100px; height: 45px; font-size: 20px"/> 
				
				<button type="button"  name="btn" id="btn" onclick="resetFields()" style="background-color: red; color: white; padding: 5px; border-radius: 20px; width: 100px; height: 45px; font-size: 20px;">Reset</button>
			
			<input type="submit" name="btn" id="btn" value="Sign Up"
				style="background-color: blue; color: white; padding: 5px; border-radius: 20px; width: 100px; height: 45px; font-size: 20px" />

		</div>
		</div>
        </form>
    </div>
</body>
</html>