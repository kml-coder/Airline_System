<%@ page import ="java.sql.*" %>
<%
	String three_letter_id = request.getParameter("three_letter_id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
    System.getenv("DB_URL"),
    System.getenv("DB_USER"),
    System.getenv("DB_PASSWORD")
);
	
	
	String sql = "insert ignore into airport values (?)";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, three_letter_id);
	int affectedRows = ps.executeUpdate();
	out.println("airport added :) <a href='customerrepwelcome.jsp'>go back</a>");
	

	%>