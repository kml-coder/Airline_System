<%@ page import ="java.sql.*" %>
<%
	String username = request.getParameter("username");
	String question = request.getParameter("question");
	String reply = request.getParameter("reply");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
    System.getenv("DB_URL"),
    System.getenv("DB_USER"),
    System.getenv("DB_PASSWORD")
);
	String sql = "insert ignore into reply values (?,?)";
	PreparedStatement ps = con.prepareStatement(sql);
	ps.setString(1, reply);
	ps.setString(2, question);
	int affectedRows = ps.executeUpdate();
	sql = "delete from question where question = ?";
	ps = con.prepareStatement(sql);
	ps.setString(1, question);
	affectedRows = ps.executeUpdate();
	out.println("Reply Recorded :) <a href='customerrepwelcome.jsp'>go back</a><br>");	
	%>