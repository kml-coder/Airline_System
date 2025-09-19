<%@ page import ="java.sql.*" %>
<%
	String acc_id = request.getParameter("acc_id");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
    System.getenv("DB_URL"),
    System.getenv("DB_USER"),
    System.getenv("DB_PASSWORD")
);
	String sql = "delete from account_associates where acc_id = ?";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, acc_id);
	int affectedRows = ps.executeUpdate();
	out.println("customer deleted :) <a href='adminwelcome.jsp'>go back</a>");
	%>