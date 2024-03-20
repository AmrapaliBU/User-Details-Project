<%@page import="com.user.hibernate.UserAttendence"%>
<%@page import="com.user.hibernate.UserHibernate"%>
<%@page import="com.user.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">

<title>List</title>
	
	<link rel="stylesheet" href="https://cdn.datatables.net/1.13.6/css/jquery.dataTables.css" />
  <script src="https://cdn.datatables.net/1.13.6/js/jquery.dataTables.js"></script>
  <script src="/User/staticContent/js/scripts/user.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script type="text/javascript" src="/User/staticContent/js/jquery.min.js"></script>
  <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
  <script src="/User/staticContent/js/json2xml.js"></script>

</head>
 
<script>
$(document).ready(function() {
    $('#list').DataTable( {
        "scrollY":"250px",
        "scrollX":true,
        "scrollCollapse":true,
        "paging":false
    } );
} );

</script> 

<script type="text/javascript"> 
 
$(document).ready(function () {
     var table=$("#list").dataTable();
	 var tableTools = new $.fn.dataTable.TableTools(table, {
		 'sSwfPath':'//cdn.datatables.net/tabletools/2.2.4/swf/copy_csv_xls_pdf.swf',
		 	'aButtons':['copy','print','csv',{
			 'sExtends':'xls',
			 'sFileName':'Data.xls',
			 'sButtonText': 'Save to Excel'
				}
			]
		});
			$(tableTools.fnContainer()).insertBefore('#list_wrapper');
	});

</script>
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
</div>
<h2 align="center" style="color:purple; font-size: 50px;">User Attendence List</h2>
<div class="col-md-12" align="center">
		
			<hr style="border-top-color: blue;">
		</div>
<script type="text/javascript">
		function Back() {
			window.location = "attendence.jsp";
		}
	</script>
<%
        UserDao dao = new UserDao();
		List list = dao.getUserList2();
	%>
   <div class="row" align="center" style="font-size: 30px;">
   <div id="demo_jui" class="container">
   <div class="table-responsive" >
	<table id="list" class="display" >
       <thead>
		<tr style="background-color: rgba(255, 99, 71, 0.6);">
			<th style="color: purple;">First Name</th>
			<th style="color: purple;">Last Name</th>
			<th style="color: purple;">Date</th>
			<th style="color: purple;">Present </th>
			<th style="color: purple;">Absent</th>
			<th style="color: purple;">Halfday</th>
			<th style="color: purple;">Holiday</th>
			<th style="color: purple;">Paid Leave</th>
			
		</tr>
        </thead>
        
        <tbody>
       <%
           for(int i = 0; i < list.size(); i++){
        	   UserAttendence user = (UserAttendence) list.get(i);
    	   %>
    	   <tr>
    	   
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getFirstname() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getLastname() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getDate() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getPresent() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getAbsent() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getHalfday() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getHoliday() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getPaidleave() %></td>
    	   
    	   </tr>
    	   
    	   <% 
       }
       %>
       </tbody>
 
	</table>
	</div>
	</div>
  </div>
  <input type="button" name="btn" id="btn" value="Back" onclick="history.back()""
				style="background-color: rgb(210, 210, 210); color: black; padding: 5px; border-radius: 15px; width: 110px; height: 50px; font-size: 25px;" /> 


</body>

<style>

body {

    font-size: 2px;
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

</style>
</html>