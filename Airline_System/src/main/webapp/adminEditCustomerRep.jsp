<%@ page import ="java.sql.*" %>
<%
	String acc_id = request.getParameter("acc_id");
	String new_username = request.getParameter("new_username");
	String new_password = request.getParameter("new_password");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
    System.getenv("DB_URL"),
    System.getenv("DB_USER"),
    System.getenv("DB_PASSWORD")
);
	
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from customer_rep where acc_id='" + acc_id + "'");
	if (rs.next()) {
		String sql = "update customer_rep set username = ?, password = ? where acc_id = ?";
		PreparedStatement ps = con.prepareStatement(sql);
		ps.setString(1, new_username);
		ps.setString(2, new_password);
		ps.setString(3, acc_id);
		int affectedRows = ps.executeUpdate();
		out.println("customer rep edited :) <a href='adminwelcome.jsp'>go back</a>");
	} else {
		out.println("bruh <a href='adminwelcome.jsp'>go back</a>");
	}


	%>