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
		<h1 class="w3-teal">Searching Free Houses</h1>
		<div>
			<h2> Free Buildings</h2>
			<div class="w3-row tableheader">
				<div class="w3-quarter">	
					City
				</div>
				<div class="w3-quarter">	
					ID  
				</div>
				<div class="w3-quarter">	
					Name
				</div>
				<div class="w3-quarter">	
					Geometry
				</div>
			</div>
			<%
				for(Body b :bodies)
				{
			%>
				<div class="w3-row">
					<div class="w3-quarter"><%=b.city.name%></div>
					<div class="w3-quarter"><%=b.ID%></div>
					<div class="w3-quarter"><%=b.name%></div>
					<div class="w3-quarter"><%= b.getArea()%> Units</div>
				</div>
				--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
			<%
				}
			%>
		</div>
		
	</body>
</html>