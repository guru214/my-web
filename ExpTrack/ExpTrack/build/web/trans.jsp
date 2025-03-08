<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="mylib.dbase.DB"%>
<%@page import="java.time.LocalDate"%>
<%@page import="p1.Transact"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        
        <%
            Transact tran = new Transact();
            
            String userName = (String)session.getAttribute("user");
            
            tran.setUser_name(userName);
            tran.setTrans_date(LocalDate.now());
            tran.setType(request.getParameter("trans"));
            tran.setAmt(Double.parseDouble(request.getParameter("amt")));
            
            double bal = 0.0;
            
            String query = "select bal from "+userName+" order by trans_id desc limit 1";
            
            //out.print(query);
            
            Connection con = DB.connect("jdbc:mysql://localhost:3306/exptrack", "root", "1234");
            ResultSet rs = DB.getRecord(query);
            
            rs.next();
            
            bal = rs.getDouble("bal");
            
            
            if(tran.getType().equals("Credit"))
               tran.setBalance(bal+tran.getAmt());
            else
               tran.setBalance(bal- tran.getAmt());
               
            
               
            query = "insert into "+userName+"(trans_date,amt,type,bal) values('"+tran.getTrans_date()+"',"+tran.getAmt()+",'"+tran.getType()+"',"+tran.getBalance()+")";
            //out.print(query);
            
            DB.runQuery(query);
            
            
            
            
            out.print("<h2 align='center'>Transaction success</h2>");
            
            
        %>
        
        
        
    </body>
</html>
