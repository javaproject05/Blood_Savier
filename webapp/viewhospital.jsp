<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="MyPack.MyDb"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
 <link rel="stylesheet" type="text/css" href="register.css"/>
<title>Hospital</title>
<meta name="keywords" content="ddddd" />
<meta name="description" content="" />
<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<link href="css/demo.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>

</head>
   
    <body>
        <div id="tooplate_body_wrapper">
<div id="tooplate_wrapper">
	<div id="tooplate_top_bar">
    	<a class="social_btn twitter">&nbsp;</a>
        <a class="social_btn facebook">&nbsp;</a>
    </div>	
    
    <div id="tooplate_header">
        <div id="site_title"><h1> BLOOD BANK</h1></div>
        
	     <div id="tooplate_menu">
            <ul>
               <li><a href="index.html" class="current">Home</a></li>
               <li><a href=rselectp.html>Join Us</a></li>
       
                <li><a href="bloodbank.html">Blood bank</a></li>
                
                <li><a href="hospital.html">Hospital</a></li>
                
                <li><a href="hospital.html">Search Donor</a></li>
                
                <li><a href="aboutus.jsp">About Us</a></li>
                
            </ul>    	
        </div> <!-- end of tooplate_menu -->
    </div> <!-- end of forever header -->
</div>

<div id="tooplate_middle_subpage">
    		
</div> <!-- end of middle -->

  <%
        try{
        String loc = request.getParameter("loc");
            String bld = request.getParameter("bld");
            
             MyDb db = new MyDb();
           Connection con =db.getCon();
           Statement stmt = con.createStatement();
           
           
           ResultSet rs = stmt.executeQuery("select hname,bld,address,email from hregister;"); 
          while( rs.next()){
           String name = rs.getString("hname");
           String bldg = rs.getString("bld");
           String add = rs.getString("address");
           String email = rs.getString("email");
           
           
        %>
           <div style="background-color: #330D0D; color: #ffffff; margin-top: 20px;">
               <div style="margin-left: 200px; padding-top: 20px; padding-bottom: 20px;">
               <label>NAME    :</label> <%out.println(name);%>
               <br/>
           <label>Blood Group :</label><%out.println(bldg);%>
              <br/>
          <label>ADDRESS      :</label> <%out.println(add);%>
           <br/>
         <label>EMAIL      :</label> <%out.println(email);%>
             </div>
           </div><%
           
          }
        
        }catch(Exception e){}
        
        
        %>







<pre>







</pre>







<div id="tooplate_footer_wrapper">
	<div id="tooplate_footer">
    	
        <div class="cleaner"></div>
    </div>
</div>


</div>
        
    </body>
</html>
