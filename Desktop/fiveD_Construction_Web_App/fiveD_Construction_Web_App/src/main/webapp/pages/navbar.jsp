<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>navbar</title>

<style type="text/css">/* Navbar Styles */
.navbar {
  position: fixed;
  top: 0;
  width: 100%;
  padding: 1rem 2rem;
  background-color: rgba(0, 0, 0, 0.5); /* transparent dark bg */
  display: flex;
  justify-content: space-between;
  align-items: center;
  z-index: 1000;
}

.navbar .logo {
  color: #ffffff;
  font-size: 1.5rem;
  font-weight: bold;
}

.navbar .nav-links {
  list-style: none;
  display: flex;
  gap: 1.5rem;
}

.navbar .nav-links li a {
  color: #ffffff;
  text-decoration: none;
  font-weight: 500;
  transition: color 0.3s;
}

.navbar .nav-links li a:hover {
  color: #00aaff;
}

/* Push content down to avoid being hidden behind fixed navbar */
.hero, .about, .services, .projects, .stats, .clients, .testimonials, footer {
  scroll-margin-top: 80px;
}
</style>
</head>

<body>
<nav class="navbar">
  <div class="logo">5D Construction</div>
  <ul class="nav-links">
  <li><a href="login">login</a></li>
    <li><a href="home">Home</a></li>
    <li><a href="home">About Us</a></li>
    <li><a href="home">Services</a></li>
    <li><a href="home">Projects</a></li>
    <li><a href="adminLogin">Admin Login</a></li>
  </ul>
</nav>

</body>
</html>