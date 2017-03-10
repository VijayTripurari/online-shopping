<%@ page language="java"  isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
	
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<body>

<div class="container">
<div class="col-sm-3"></div>
<div class="col-sm-7">
  <h2>   Login Form :     </h2>
  <p></p>
  <form action="" method="POST">
    <div class="form-group">
      <label for="usr">Name:</label>
      <input type="text" class="form-control" name="username">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" name="password">
    </div>
   <div class="form-group"> <!-- Submit button !-->
		<button type="submit" class="btn btn-primary">Submit</button>
	</div>
  </form>
</div>
<div class="col-sm-2"></div>
		

</body>
</html>