<%@ page import = "java.io.*,java.util.*" %>

<html>
   <head>
      <title>Application object in JSP</title>
   </head>
   
   <body>
      <%
         Integer hitsCount = (Integer)application.getAttribute("hitCounter");
         if( hitsCount ==null || hitsCount == 0 ) {
            /* First visit */
            out.println("Welcome to here!!");
            hitsCount = 1;
         } else {
            /* return visit */
            out.println("Welcome back ya!!!");
            hitsCount += 1;
         }
         application.setAttribute("hitCounter", hitsCount);
      %>
      <center>
         <p>Total number of visits: <%= hitsCount%></p>
        
        <h1> Hi There </h1>
        <br/>
        <h2> Cheers! </h2>
        
      </center>
   
   </body>
</html>


