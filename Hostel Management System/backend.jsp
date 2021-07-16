<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*" %>


        <%
		String student_id=request.getParameter("student_id");
		String dob=request.getParameter("dob");
		String student_name=request.getParameter("student_name");
		String father_name=request.getParameter("father_name");
                String dep=request.getParameter("dep");
                String year=request.getParameter("year");
                String address=request.getParameter("address");
                String num=request.getParameter("num");
                String email=request.getParameter("email");
                String g=request.getParameter("g");
                String mess_id=request.getParameter("mess_id");
                String hostel_id=request.getParameter("hostel_id");
                String room_id=request.getParameter("room_id");
               
		try
		{
			
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn= DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:oracle","HR","02");
			Statement stmt= conn.createStatement();

      int q1=stmt.executeUpdate("INSERT into student values(" +student_id+ ",'" +dob+ "','" +student_name+ "','" +father_name+ "','" +dep+ "','" +year+ "','" +address+ "'," +num+ ",'" +email+ "', '" +g+ "'," +mess_id+ ", " +hostel_id+ "," +room_id+ ")");
			out.println("Data is successfully inserted!");
		}
		catch(Exception e)
		{
		out.println(e);
		out.println("data entry is unsuccessful");
		}
		%>
                
  