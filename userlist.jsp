<%@page import="com.user.hibernate.UserHibernate"%>
<%@page import="com.user.dao.UserDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
        "scrollY":"300px",
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
<h2 align="center" style="color:purple; font-size: 50px;">User List</h2>
<div class="col-md-12" align="center">
		
			<hr style="border-top-color: blue;">
		</div>
<script type="text/javascript">
		function Back() {
			window.location = "login.jsp";
		}
	</script>
<%
        UserDao dao = new UserDao();
		List list = dao.getUserList();
	%>
   <div class="row" align="center" style="font-size: 35px;">
   <div id="demo_jui" class="container">
   <div class="table-responsive" >
	<table id="list" class="display" >
       <thead>
		<tr style="background-color: rgba(255, 99, 71, 0.6);">
			<th style="color: purple;">First Name</th>
			<th style="color: purple;">Last Name</th>
			<th style="color: purple;">Contact No</th>
			<th style="color: purple;">Address</th>
			<th style="color: purple;">Username</th>
			<th style="color: purple;">Password</th>
			<th style="color: purple;">Re-Password</th>
			<th style="color: purple;">City</th>
			<th style="color: purple;">Pan No</th>
			<th style="color: purple;">Email Id</th>
		</tr>
        </thead>
        
        <tbody>
       <%
           for(int i = 0; i < list.size(); i++){
    	   UserHibernate user = (UserHibernate) list.get(i);
    	   %>
    	   <tr>
    	   
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getFirstname() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getLastname() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getContact_no() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getAddress() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getUsername() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getPassword() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getRe_password() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getCity() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getPan_no() %></td>
    	   <td class="align" style="background-color: rgb(210, 210, 210);"><%=user.getEmail() %></td>
    	   
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
</html>