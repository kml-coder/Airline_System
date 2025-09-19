<%@ page import ="java.sql.*" %>
<%
	String aircraft_id = request.getParameter("aircraft_id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
    System.getenv("DB_URL"),
    System.getenv("DB_USER"),
    System.getenv("DB_PASSWORD")
);
	
	
	String sql = "delete from aircraft where aircraft_id = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, aircraft_id);
	int affectedRows = ps.executeUpdate();
	out.println("aircraft deleted :) <a href='customerrepwelcome.jsp'>go back</a>");
	

	%>