<%-- 
    Document   : printAllTransactions
    Created on : 09-May-2024, 10:59:31 am
    Author     : kalme
--%>

<%@page import="mylib.dbase.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
        table, td, th {
  border: 1px solid;
}

table {
  width: 50%;
  border-collapse: collapse;
}
        </style>
        
    </head>
    <body>
        <h1>All transactions</h1>
        
        <%
            String user = (String)session.getAttribute("user");
            
            String query = "select * from "+user;
            
            DB.connect("jdbc:mysql://localhost:3306/exptrack", "root", "1234");
            ResultSet rs = DB.getRecord(query);
            
            //out.print(query);
            
            out.print("<table>");
            
            while(rs.next())
            {
                out.print("<tr><td>"+rs.getInt(1)+"</td>"+"<td>"+rs.getString(2)+"</td>"+"<td>"+rs.getDouble(3)+"</td>"+"<td>"+rs.getString(4)+"</td>"+"<td>"+rs.getDouble(5)+"</td></tr>");
            }
            
            out.print("</table>");
        
            
            
        %>
    </body>
</html>
