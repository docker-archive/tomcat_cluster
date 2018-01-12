<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Date"%>
<%@page import="java.net.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
<FONT size = 5 COLOR="#0000FF">
        Instance <%=InetAddress.getLocalHost()%> <br/><br/>
        </FONT>
       
        <hr/>

        <FONT size = 5 COLOR="#CC0000">
         <br/>
        Session Id : <%=request.getSession().getId()%> <br/>
        Is it New Session : <%=request.getSession().isNew()%><br/>
        Session Creation Date : <%=new Date(request.getSession().getCreationTime())%><br/>
        Session Access Date : <%=new Date(request.getSession().getLastAccessedTime())%><br/><br/>
        </FONT>
    </body>
</html>
