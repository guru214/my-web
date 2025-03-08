<%@page import="mylib.dbase.DB"%>
<%@page import="p1.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            User user = new User();
            
            
            user.setName(request.getParameter("username"));
            user.setPassword(request.getParameter("pass"));
            
            String query = "select password from user where user_name = '"+user.getName()+"'";
            
            DB.connect("jdbc:mysql://localhost:3306/exptrack", "root", "1234");
            ResultSet rs = DB.getRecord(query);
            
                    
            rs.next();
            
            if(user.getPassword().equals(rs.getString(1)))
            {
                RequestDispatcher rd=request.getRequestDispatcher("loginsuccess.jsp");  
                rd.forward(request, response); 
                
            }
            else
            {
                out.println("<h3 align='center'>Invalid creds</h3>");
               
            
            }
            
        
        
        %>
        <jsp:include page="index.html"></jsp:include>  
    </body>
</html>
