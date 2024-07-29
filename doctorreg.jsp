<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Doctor Registration</title>

</head>

<body>

<form action="DoctorCont" enctype="multipart/form-data" method="post">

    <table>

        <tr>

            <td><b>Doctor Registration Page</b></td>

        </tr>

        <tr>

            <td> Name </td>

            <td><input type="text" name="name"></td>

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

            <td>Work Experience</td>

            <td><input type="file" name="workexperience"></td>

        </tr>

        <tr>

            <td><b>Joined Details</b></td>

        </tr>

        <tr>

            <td>Joining Date</td>

            <td><input type="date" name="appdate"></td>

        </tr>

        <tr>

            <td colspan="2"><input type="submit" value="Submit"></td>

        </tr>

    </table>

</form>



</body>

</html>

