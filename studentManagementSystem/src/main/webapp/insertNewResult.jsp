<%@ page import ="MySqlConnection.ConnectionProvider"%>
<%@ page import ="java.sql.*" %>
<%
// Get user input

String rollNo =  request.getParameter("rollNum");
String s1 =  request.getParameter("s1");
String s2 =  request.getParameter("s2");
String s3 =  request.getParameter("s3");
String s4 =  request.getParameter("s4");
String s5 =  request.getParameter("s5");
String s6 =  request.getParameter("s6");
String s7 =  request.getParameter("s7");



try(Connection con = ConnectionProvider.getCon()){
	
	// Query db with user provided values


	Statement st = con.createStatement();

	st.execute("INSERT INTO `student`.`result` (`rollNum`, `s1`, `s2`, `s3`, `s4`,`s5`,`s6`,`s7`) VALUES ('"+rollNo+"','"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+ "');");

	System.out.print("Added results");

	response.sendRedirect("adminHome.jsp");


}catch(Exception e){
	System.err.print("Error in connecting to db: "+e.getLocalizedMessage());
}


%>