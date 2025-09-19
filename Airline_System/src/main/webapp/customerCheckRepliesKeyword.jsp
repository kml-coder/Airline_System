<%@ page import ="java.sql.*" %>
<%
	String user = request.getParameter("user");
	String keyword = request.getParameter("keyword");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(
    System.getenv("DB_URL"),
    System.getenv("DB_USER"),
    System.getenv("DB_PASSWORD")
);
	
	Statement st = con.createStatement();
	ResultSet rs;
	rs = st.executeQuery("select * from reply where question like '%" + keyword + "%' or reply like '%" + keyword + "%'");
	if (!rs.next()) {
		out.println("Bruh <a href='customerwelcome.jsp'>go back</a>");
	} else {
		do {
			
			String question = rs.getString("question");
			String reply = rs.getString("reply");
			
			out.println("A customer rep has replied to the question '" + question + "': " + reply + "<br>");
		} while (rs.next());
		out.println("<a href='customerwelcome.jsp'>go back</a>");
	}
%>
	
	
	