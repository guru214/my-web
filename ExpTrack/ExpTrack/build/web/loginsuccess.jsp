<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <a href ="transform.jsp">Transaction form</a> <br><br>
        
        <a href ="printAllTransactions.jsp">Print all transactions</a> <br><br><!-- comment -->
        
        <a href ="printSpecificTransactions.jsp">Print specific transactions</a> <br><br>
        
        <%
            String user = request.getParameter("username");
            session.setAttribute("user", user);
        %>
    </body>
</html>
