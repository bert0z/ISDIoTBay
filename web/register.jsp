<%-- 
    Document   : register
    Created on : 08/04/2020, 4:13:04 PM
    Author     : bert_
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css" >
        <title>Register</title>
    </head>
    <body>
        <h1>Register</h1>
        <form value = "submitted" method="post" action="welcome.jsp">
            <table>
                <tr><td>Name:</td><td><input type="text" placeholder="Enter name" name="name" required="true"></td></tr>
                <tr><td>Email:</td><td><input type="text" placeholder="Enter email" name="email" required></td></tr>
                <tr><td>Password:</td><td><input type="password" placeholder="Enter password" name="password" required></td></tr>
                <tr><td>Gender:</td><td><input type="radio" value="male" name="gender" required><label for ="male">Male</label><br><input type="radio" value="female" name="gender"><label for ="male">Female</label></td></tr>
                <tr><td>Favourite Colour:</td><td><select id ="favcol" name ="favcol">
                            <option value = "black">Black</option>
                            <option value = "brown">Brown</option>
                            <option value = "red">Red</option>
                            <option value = "orange">Orange</option>
                            <option value = "yellow">Yellow</option>
                            <option value = "green">Green</option>
                            <option value = "blue">Blue</option>
                            <option value = "purple">Purple</option>
                            <option value = "gray">Gray</option>
                            <option value = "white">White</option>
                    </td></tr>
                <tr><td>Agree to TOS</td><td><input type="checkbox" name ="tos" value ="yes"></td></tr>
                <tr><td></td><td><input type="hidden" name="submitted" value="yes"><input type="submit" value="Sign Up"></td></tr>
            </table>
        </form>
    </body>
</html>
