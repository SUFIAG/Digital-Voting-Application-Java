<%--
  Created by IntelliJ IDEA.
  User: mukul
  Date: 09-05-2021
  Time: 21:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/body.css" rel='stylesheet' type='text/css' />
</head>
<body>
<%
    String message=request.getParameter("msg");
%>
<jsp:include page="header.jsp"></jsp:include>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form action="Contact" method="post" style="max-width:350px;margin:auto">
                <center>
                    <div class="container">
                        <h1>Drop us a line</h1>
                        <p>Please fill in this form.</p>
                        <hr>
                        <input type="text" placeholder="Enter Fullname" name="name" required>

                        <input type="text" placeholder="Enter Your Company Name" name="company" required>

                        <input type="email" placeholder="Enter Email" name="email" required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2, 3}$">

                        <input type="text" placeholder="Enter Your Message" name="message"  required>
                        <hr>
                        <button type="submit" class="btn">Submit</button>
                    </div>
                    <div class="container signin">
                        <% if(message!=null){
                            if(message.equals("success")){%>
                        <img src="images/ok-16.png" alt="Computer Man" style="width:23px;height:23px;">  <font color="#1B9B3E">Message sent successfully </font>
                        <%}else if(message.equals("failed")){
                        %>
                        <img src="images/alert-16.png" alt="Computer Man" style="width:23px;height:23px;" autofocus> <font color="#ff0000">Failed To send Message</font>

                        <%}}%>
                        <small><p>Create an account? <a href="register.jsp">Sign up</a>.</p></small>
                    </div>
                </center>
            </form>
            <div class="login100-more" style="background-image: url('images/cus.jpg');"></div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </div>
</div>
</body>
</html>
