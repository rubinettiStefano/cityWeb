<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
	import="java.util.List,com.generation.citymanager.model.entities.*,com.generation.citymanager.model.database.*"
	    
%>
<%
	List<Body> bodies = (List<Body>) request.getAttribute("bodies");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>City Details</title>
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
		<link rel="stylesheet" href="city.css">
	</head>
	<body>
		<h1 class="w3-teal">Bodies by type <b><%= request.getParameter("type") %></b></h1>
		<div>
			<div class="w3-row tableheader">
				<div class="w3-quarter">	
					  City
				</div>
				<div class="w3-quarter">	
					ID - Name
				</div>
				<div class="w3-quarter">	
					Geometry
				</div>
				<div class="w3-quarter">	
					Size
				</div>
			</div>
			<%
				for(Body b :bodies)
				{
			%>
				<div class="w3-row">
					<div class="w3-quarter"><%= b.city.name%></div>
					<div class="w3-quarter"><%=b.ID%> - <%=b.name%></div>
					<div class="w3-quarter">From (<%=b.left%>,<%=b.bottom%>) To (<%=b.right%>,<%=b.top%>)</div>
					<div class="w3-quarter"><%= b.getArea()%> Units</div>
				</div>
				--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			<%
				}
			%>
		</div>
		
	</body>
</html>