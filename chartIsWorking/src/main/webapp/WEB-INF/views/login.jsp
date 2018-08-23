<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<title></title>
</head>
<body>
 <div class="container">
 <h1>Login Using</h1>
  <!--  <a class="nav-link" href="/connect/google">
<input type="hidden" name="scope" value="profile email" />
<button type="submit" class="loginBtn loginBtn--google">
  Login with Google
</button></a> -->
 <form action="/connect/google" method="POST" style="display: inline">
 <input type="hidden" name="scope" value="profile email" />
 <button type="submit" class="btn btn-danger">
 Google <span class="fa fa-google-plus"></span>
 </button>
 </form>
 </div>
</body>
</html>