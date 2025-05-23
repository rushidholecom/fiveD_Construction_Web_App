<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Status</title>
  <style>
    body {
    background: linear-gradient(to right, #3931af, #00c6ff);
      margin: 0;
      padding: 0;
      font-family: 'Georgia', serif;

      /* ✅ Add your background image here */
      
      background-image: url('/resources/images/status-bg-img.jpg'); 
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh;
      color: #fff;
    }

    .container {
      height: 100%;
      width: 100%;
      background-color: rgba(0, 0, 0, 0.4); /* dark overlay for text visibility */
      display: flex;
      flex-direction: column;
      justify-content: center;
      padding: 60px 80px;
      box-sizing: border-box;
    }

    .top-nav {
      position: absolute;
      top: 30px;
      right: 50px;
    }

    .top-nav a {
      color: #fff;
      font-size: 22px;
      text-decoration: none;
      font-family: 'Georgia', serif;
    }

    .top-nav a:hover {
      text-decoration: underline;
    }

    h1 {
      font-size: 80px;
      font-weight: bold;
      margin: 0;
      color: white;
    }

    .subtitle {
      font-size: 72px;
      font-weight: 500;
      margin-top: 10px;
      color: #aaa;
    }

    .description {
      font-size: 20px;
      margin-top: 30px;
      color: #ddd;
      font-family: Arial, sans-serif;
    }

    @media screen and (max-width: 768px) {
      h1 {
        font-size: 48px;
      }

      .subtitle {
        font-size: 38px;
      }

      .description {
        font-size: 16px;
      }

      .top-nav a {
        font-size: 18px;
      }

      .container {
        padding: 40px 20px;
      }
    }
  </style>
</head>
<body>

  <!-- Top Navigation -->
  <div class="top-nav">
    <a href="index">home</a>
  </div>

  <!-- Main Content -->
  <div class="container">
  <h2>${msg}</h2>
    <h1>Updates On</h1>
    <div class="subtitle">Appointment</div>
    <p class="description">Our executive will get in touch on your phone</p>

    <!-- Optional: Insert form or button below if needed -->
    <!--
    <form action="submit-update.jsp" method="POST">
      <input type="text" name="comment" placeholder="Add comment..." required />
      <input type="submit" value="Submit" />
    </form>
    -->
  </div>

</body>
</html>
