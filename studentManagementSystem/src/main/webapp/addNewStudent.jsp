<%@ page import ="MySqlConnection.ConnectionProvider"%>
<%@ page import ="java.sql.*" %>

<% 

// Get user input
String course =  request.getParameter("course");
String branch =  request.getParameter("branch");
String rollNum =  request.getParameter("rollNum");
String name =  request.getParameter("name");
String fatherName =  request.getParameter("fatherName");
String gender =  request.getParameter("gender");


try(Connection con = ConnectionProvider.getCon()){
	
	// Query db with user provided values


	Statement st = con.createStatement();

	st.execute("INSERT INTO `student`.`student` (`course`, `branch`, `rollNum`, `name`, `fatherName`,`gender`) VALUES ('"+course+"','"+branch+"','"+rollNum+"','"+name+"','"+fatherName+"','"+gender+ "');");

System.out.print("Added student");

response.sendRedirect("adminHome.jsp");


}catch(Exception e){
	System.err.print("Error in connecting to db: "+e.getLocalizedMessage());
}


%>