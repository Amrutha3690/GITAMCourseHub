<!DOCTYPE html>
<html>
<head>
<title>Register</title>
<link rel="stylesheet" href="../css/style.css">
</head>

<body>

<center>

<h2>Student Registration</h2>

<form action="../register" method="post">

<input type="text" name="fullName" placeholder="Full Name" required><br><br>

<input type="email" name="email" placeholder="Email" required><br><br>

<input type="password" name="password" placeholder="Password" required><br><br>

<input type="text" name="department" placeholder="Department" required><br><br>

<input type="number" name="year" placeholder="Year" min="1" max="4" required><br><br>

<input type="submit" value="Register">

</form>

<br>

<a href="login.jsp">Already have an account? Login</a>

</center>

</body>
</html>