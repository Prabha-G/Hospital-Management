<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Patient Registration Form</title>
</head>
<body>
<form action="PatientController" enctype="multipart/form-data" method="post">
    <table>
        <tr>
            <td><b>Basic Information</b></td>
        </tr>
        <tr>
            <td>Patient Name </td>
            <td><input type="text" name="pname"></td>
        </tr>
        <tr>
            <td>Address </td>
            <td><input type="text" name="address"></td>
        </tr>
        <tr>
            <td>Gender </td>
            <td>
                <input type="radio" name="gender" value="Male"> Male
                <input type="radio" name="gender" value="Female"> Female
                <input type="radio" name="gender" value="Others"> Others
            </td>
        </tr>
        <tr>
            <td>Prescription </td>
            <td><input type="file" name="prescription"></td>
        </tr>
        <tr>
            <td><b>Appointment Information</b></td>
        </tr>
        <tr>
            <td>Required Appointment Date</td>
            <td><input type="date" name="appdate"></td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" value="Submit"></td>
        </tr>
    </table>
</form>
</body>
</html>


            