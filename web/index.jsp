<%--
    Document   : index
    Created on : Nov 13, 2014, 9:58:52 AM
    Author     : sarmeet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%
    if (session.getAttribute("login") != "" && session.getAttribute("login") != null) {
        response.sendRedirect("profile.jsp");
    }
    ;
%>
<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Foundation | Welcome</title>
    <link rel="stylesheet" href="./css/foundation.css"/>
    <link rel="stylesheet" href="./css/main.css"/>
    <link href='http://fonts.googleapis.com/css?family=Poiret+One|Josefin+Sans' rel='stylesheet' type='text/css'>
    <script src="js/vendor/modernizr.js"></script>
</head>
<body>

<div class="row">
    <div class="large-12 columns">
        <center>
            <h1>
                <div class="custom-heading-js">Welcome to Peafowl Dating</div>
            </h1>
        </center>
    </div>

</div>

<div class="row" data-equalizer>
    <div class="large-12 columns">
        <div class="panel baby-blue-bg">
            <center>
                <h3>
                    <div class="custom-heading-po">Dating Made Easy!</div>
                </h3>
            </center>

            <center><p>Please Login or Register to Continue</p></center>
            <div class="row">
                <div class="large-5 medium-5 columns theme-bg" data-equalizer-watch>
                    <center><p>Login</p></center>
                    <%
                        if (request.getAttribute("message") != "" && request.getAttribute("message") != null) {
                            out.println("<div data-alert class='alert-box warning round'>"
                                    + request.getAttribute("message") +
                                    "<a href='#' class='close'>&times;</a>" +
                                    "</div>");

                        }
                    %>
                    <div class="large-12 columns">
                        <form data-abide action="login.jsp" method="POST">
                            <input type="hidden" name="actiontype" value="Login">

                            <div class="email-field">
                                <label>Email
                                    <small>(required)</small>
                                    <input type="email" name="email" required>
                                </label>
                                <small class="error">An email address is required.</small>
                            </div>

                            <div class="password-field">
                                <label>Password
                                    <small>(required)</small>
                                    <input type="password" name="password" required>
                                </label>
                                <small class="error">A password is required.</small>
                            </div>
                            <div class=" clearfix">
                                <button type="submit" class="right">Login</button>
                            </div>
                        </form>
                    </div>

                </div>

                <div class="large-5 medium-5 columns" data-equalizer-watch>
                    <div class="theme-bg">
                        <center><p>Register</p></center>

                        <form data-abide action="login.jsp" method="POST">

                            <input type="hidden" name="actiontype" value="registerStep1">

                            <div class="name-field">
                                <label>First Name
                                    <small>(required)</small>
                                    <input type="text" name="firstname" required pattern="[a-zA-Z]+">
                                </label>
                                <small class="error">An name is required.</small>
                            </div>

                            <div class="name-field">
                                <label>Last Name
                                    <small>(required)</small>
                                    <input type="text" name="lasename" required pattern="alpha_numeric">
                                </label>
                                <small class="error">An username is required.</small>
                            </div>

                            <div class="email-field">
                                <label>Email
                                    <small>(required)</small>
                                    <input type="email" name="email" required>
                                </label>
                                <small class="error">An email address is required.</small>
                            </div>

                            <div class="password-field">
                                <label>Password
                                    <small>(required)</small>
                                    <input type="password" name="password" required>
                                </label>
                                <small class="error">A password is required.</small>
                            </div>
                            <div class="password-field">
                                <label>Password
                                    <small>(again)</small>
                                    <input type="password" required>
                                </label>
                                <small class="error">A password is required.</small>
                            </div>
                            <div class=" clearfix">
                                <button type="submit" class="right">Register</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="js/vendor/jquery.js"></script>
<script src="js/foundation.min.js"></script>
<script>
    $(document).foundation();
</script>
</body>
</html>
