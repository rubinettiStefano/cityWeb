<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="java.util.List,com.generation.citymanager.model.entities.*,com.generation.citymanager.model.database.*"
	    
%>
<%
	List<Citizen> citizens = (List<Citizen>) request.getAttribute("citizens");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>City Manager 1.0 - List searched citizens</title>
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="city.css">
	</head>
	<body>
		<h1 class="w3-teal"> City Manager 1.0 - Citizens List for key: <b><%=request.getParameter("key") %></b> </h1>
		<div class="w3-half">
			<div class="w3-row tableheader">
				<div class="w3-quarter">	
					ID
				</div>
				<div class="w3-quarter">	
					Name
				</div>
				<div class="w3-quarter">	
					Surname
				</div>
				<div class="w3-quarter">	
					Residence
				</div>
			</div>
			<%
				for(Citizen c : citizens)
				{	 
			%>
					<div class="w3-row">
						<div class="w3-quarter">	
							<%=c.ID %> 
						</div>
						<div class="w3-quarter">	
							<%=c.name %>
						</div>
						<div class="w3-quarter">	
							 <%=c.surname %>
						</div>
						<div class="w3-quarter">	
							<%=c.body.city.name %>-<%=c.body.name %> 
						</div>
					</div>
			<%
				}
			%>
		</div>
	</body>
</html>