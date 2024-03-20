function myAlert(msg)
{
	var dialog = bootbox.dialog({
    message: '<p class="text-center">'+msg.fontcolor("red").fontsize(5)+'</p>',
    closeButton: false
   });

   setTimeout(function() {
	dialog.modal('hide');
   }, 1500);
}

function successAlert(msg)
{
	var dialog = bootbox.dialog({
    message: '<p class="text-center">'+msg.fontcolor("green").fontsize(5)+'</p>',
    closeButton: false
   });
   setTimeout(function()
   {
	dialog.modal('hide');
	location.reload();
   }, 1500);
}

function user_values(){
	
    	var firstname= $("#firstname").val();
    	var lastname = $("#lastname").val();
    	var contact_no = $("#contact_no").val();
    	var address= $("#address").val();
    	var username = $("#username").val();
    	var password = $("#password").val();
    	var re_password= $("#re_password").val();
    	var city = $("#city").val();
    	var pan_no = $("#pan_no").val();
    	var email = $("#email").val();
    	
    	if(firstname == null || firstname == "" || firstname == " " || firstname == undefined)
    	{
    		alert("Please Enter First Name");
    		return false;
    	}
    	
    	if(lastname == null || lastname == "" || lastname == " " || lastname == undefined)
    	{
    		alert("Please Enter Last Name");
    		return false;
    	}
    		
    	if(contact_no == null || contact_no == "" || contact_no == " " || contact_no == undefined)
    	{
    		alert("Please Enter Contact Number");
    		return false;
    	}
    	
    	if(email == null || email == "" || email == " " || email == undefined)
    	{
    		alert("Please Enter Email Id");
    		return false;
    	}
    	
    	if(address == null || address == "" || address == " " || address == undefined)
    	{
    		alert("Please Enter Address ");
    		return false;
    	}
    	
    	if(username == null || username == "" || username == " " || username == undefined)
    	{
    		alert("Please Enter User Name");
    		return false;
    	}
    	
    	if(password == null || password == "" || password == " " || password == undefined)
    	{
    		alert("Please Enter Password");
    		return false;
    	}
    	
    	if(re_password == null || re_password == "" || re_password == " " || re_password == undefined)
    	{
    		alert("Please Enter Re Password ");
    		return false;
    	}
    	if(password != re_password){
	  		  alert("Please Enter same password");
	  		  return false;
    	}
    	if(city == null || city == "" || city == " " || city == undefined)
    	{
    		alert("Please Enter City Name");
    		return false;
    	}
    	if(pan_no == null || pan_no == "" || pan_no == " " || pan_no == undefined)
    	{
    		alert("Please Enter Pan Number");
    		return false;
    	}
    	
    	 
    	var params = {};
    	
    	params["firstname"] = firstname;
    	params["lastname"] = lastname;
    	params["contact_no"] = contact_no;
    	params["address"] = address;
    	params["username"] = username;
    	params["password"] = password;
    	params["re_password"] = re_password;
    	params["city"] = city;
    	params["pan_no"] = pan_no;
    	params["email"] = email;
    	
    	
    	params["methodName"] = "user_values";
    	$.post("/User/jsp/utility/controller.jsp", params, function(data)
    			{
    		alert(data);
    		location.reload();
    			}
    	).error(function(jqXHR, textStatus, errorThrown)
    			{
    		if(textStatus=="timeout"){
    			
    		}
    			});   	
    	
}
function SendUserList()
{
	var params={}
	
	params["methodName"]="SendUserList";
	
	 $.post('/User/jsp/utility/controller.jsp',params,function(data){
       
	    	$('#embel').dataTable().fnClearTable();
			var jsonData = $.parseJSON(data);
			var catmap = jsonData.Demohibernate;
			
			$(document).ready(function() {
				
				$('#embel').DataTable( {fnRowCallback : function(nRow, aData, iDisplayIndex)
				{
					$("th:first", nRow).html(iDisplayIndex +1);
					return nRow;
				},
				destroy: true,
				searching: true,
				"scrollY": 410,
				"scrollX": true,
				columns: [
					{"data": "firstname", "width": "5%", "defaultContent": ""},
					{"data": "lastname", "width": "5%", "defaultContent": ""},
					{"data": "contact_no", "width": "5%", "defaultContent": ""},
					{"data": "address", "width": "5%", "defaultContent": ""},
					{"data": "username", "width": "5%", "defaultContent": ""},
					{"data": "password", "width": "5%", "defaultContent": ""},
					{"data": "re_password", "width": "5%", "defaultContent": ""},
					{"data": "city", "width": "5%", "defaultContent": ""},
					{"data": "pan_no", "width": "5%", "defaultContent": ""},
					{"data": "email", "width": "5%", "defaultContent": ""},
				
				]
				} );
			} );
			var mydata = catmap;
			$('#embel').dataTable().fnAddData(mydata);
			}).error(function(jqXHR, textStatus, errorThrown){
				if(textStatus==="timeout") {
					$(loaderObj).hide();
					$(loaderObj).find('#errorDiv').show();
				}
			});
      	}

function updateFields() {
    var selectName = document.getElementById("username").value;
    var dataList = document.getElementById("UserIDlist");
    var selectedOption = dataList.querySelector("option[value='" + selectName + "']");

    if (selectedOption) {
        var dataValue = selectedOption.getAttribute("data-value");
        var values = dataValue.split(",");

        document.getElementById("firstname").value = values[0];
        document.getElementById("lastname").value = values[1];
        document.getElementById("contact_no").value = values[2];
        document.getElementById("address").value = values[3];
        document.getElementById("username").value = values[4];
        document.getElementById("password").value = values[5];
        document.getElementById("re_password").value = values[6];
        document.getElementById("city").value = values[7];
        document.getElementById("pan_no").value = values[8];
        document.getElementById("email").value = values[9];
        
    }

}

function user_data(){
	
	var firstname= $("#firstname").val();
	var lastname = $("#lastname").val();
	var date = $("#date").val();
	var present= $("#present").val();
	var absent = $("#absent").val();
	var halfday = $("#halfday").val();
	var holiday= $("#holiday").val();
	var paidleave = $("#paidleave").val();
	
	if(firstname == null || firstname == "" || firstname == " " || firstname == undefined)
	{
		alert("Please Enter First Name");
		return false;
	}
	
	if(lastname == null || lastname == "" || lastname == " " || lastname == undefined)
	{
		alert("Please Enter Last Name");
		return false;
	}
		
	if(date == null || date == "" || date == " " || date == undefined)
	{
		alert("Please Enter date");
		return false;
	}
	
	if(present == null || present == "" || present == " " || present == undefined)
	{
		alert("Please Enter Present");
		return false;
	}
	
	if(absent == null || absent == "" || absent == " " || absent == undefined)
	{
		alert("Please Enter Absent ");
		return false;
	}
	
	if(halfday == null || halfday == "" || halfday == " " || halfday == undefined)
	{
		alert("Please Enter Halfday");
		return false;
	}
	
	if(holiday == null || holiday == "" || holiday == " " || holiday == undefined)
	{
		alert("Please Enter Holiday");
		return false;
	}
	
	if(paidleave == null || paidleave == "" || paidleave == " " || paidleave == undefined)
	{
		alert("Please Enter Paidleave");
		return false;
	}
	 
	var params = {};
	
	params["firstname"] = firstname;
	params["lastname"] = lastname;
	params["date"] = date;
	params["present"] = present;
	params["absent"] = absent;
	params["halfday"] = halfday;
	params["holiday"] = holiday;
	params["paidleave"] = paidleave;
	
	
	
	params["methodName"] = "user_data";
	$.post("/User/jsp/utility/controller.jsp", params, function(data)
			{
		alert(data);
		location.reload();
			}
	).error(function(jqXHR, textStatus, errorThrown)
			{
		if(textStatus=="timeout"){
			
		}
			});   	
	
}

function SendAttendenceList()
{
	var params={}
	
	params["methodName"]="SendAttendenceList";
	
	 $.post('/User/jsp/utility/controller.jsp',params,function(data){
       
	    	$('#embel').dataTable().fnClearTable();
			var jsonData = $.parseJSON(data);
			var catmap = jsonData.Demohibernate;
			
			$(document).ready(function() {
				
				$('#embel').DataTable( {fnRowCallback : function(nRow, aData, iDisplayIndex)
				{
					$("th:first", nRow).html(iDisplayIndex +1);
					return nRow;
				},
				destroy: true,
				searching: true,
				"scrollY": 300,
				"scrollX": true,
				columns: [
					{"data": "firstname", "width": "5%", "defaultContent": ""},
					{"data": "lastname", "width": "5%", "defaultContent": ""},
					{"data": "date", "width": "5%", "defaultContent": ""},
					{"data": "present", "width": "5%", "defaultContent": ""},
					{"data": "absent", "width": "5%", "defaultContent": ""},
					{"data": "halfday", "width": "5%", "defaultContent": ""},
					{"data": "holiday", "width": "5%", "defaultContent": ""},
					{"data": "paidleave", "width": "5%", "defaultContent": ""},
					
				]
				} );
			} );
			var mydata = catmap;
			$('#embel').dataTable().fnAddData(mydata);
			}).error(function(jqXHR, textStatus, errorThrown){
				if(textStatus==="timeout") {
					$(loaderObj).hide();
					$(loaderObj).find('#errorDiv').show();
				}
			});
      	}
