<%@page import="mylib.dbase.DB"%>
<%@page import="p1.User"%>
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
            
            String query = "insert into user values('"+user.getName()+"','"+user.getPassword()+"')";
            
            DB.connect("jdbc:mysql://localhost:3306/exptrack", "root", "1234");
            DB.runQuery(query);
            
            //create table with same name as username
            
            query = "create table "+user.getName()+"(trans_id int primary key auto_increment, trans_date date,amt decimal(12,2),type varchar(20),bal decimal(12,2))";
            DB.runQuery(query);
            
            out.println("<h3 align='center'>Registration success</h3>");
        
        %>
        <jsp:include page="index.html"></jsp:include> 

    </body>
</html>
