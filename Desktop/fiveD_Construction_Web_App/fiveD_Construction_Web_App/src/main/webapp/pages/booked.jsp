<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Booking Successful</title>
  <style>
    body {
    
      margin: 0;
      padding: 0;
      font-family: 'Segoe UI', sans-serif;

      background: linear-gradient(to right, #3931af, #00c6ff);
    }

    .hero-section {
    
      position: relative;
      width: 100%;
      height: 100vh;

      /* ✅ Set your background image here */
      background-image: url('/resources/images/building-image.jpg');
      background: rgba(0, 0, 0, 0.7);
      background-size: cover;
      
      background-position: center;
      display: flex;
      align-items: center;
      justify-content: space-between;
      overflow: hidden;
      padding: 0 80px;
      color: white;
    }

    .left-image {
    
      flex: 1;
      z-index: 2;
    }

    .left-image img {
      max-width: 500px;
      width: 100%;
      border-radius: 10px;
    }

    .right-content {
      flex: 1;
      text-align: left;
      z-index: 2;
    }

    .right-content h1 {
      font-size: 60px;
      font-weight: 800;
      margin-bottom: 20px;
    }

    .right-content .cta-button {
      display: inline-block;
      background: #ff5e00;
      color: white;
      padding: 14px 28px;
      font-size: 18px;
      border-radius: 30px;
      text-decoration: none;
      font-weight: bold;
      box-shadow: 0 4px 10px rgba(255, 94, 0, 0.3);
      transition: background 0.3s ease;
    }

    .right-content .cta-button:hover {
      background: #ff3c00;
    }

    /* Optional arrows */
    .arrows {
      position: absolute;
      right: 100px;
      top: 50%;
      transform: translateY(-50%);
      display: flex;
      flex-direction: column;
      gap: 20px;
      z-index: 1;
    }

    .arrow {
      width: 40px;
      height: 40px;
      background: linear-gradient(to right, #ff6a00, #ff3c00);
      clip-path: polygon(0 0, 100% 50%, 0 100%);
      transform: rotate(180deg);
    }

    /* Optional color blobs */
    .color-blob {
      position: absolute;
      width: 200px;
      height: 200px;
      border-radius: 50%;
      background: linear-gradient(to top right, #ff6a00, #ff3c00);
      z-index: 0;
    }

    .top-left-blob {
      top: -50px;
      left: -50px;
    }

    .bottom-right-blob {
      bottom: -50px;
      right: -50px;
    }

    @media screen and (max-width: 768px) {
      .hero-section {
      
        flex-direction: column;
        text-align: center;
        padding: 40px 20px;
      }

      .left-image,
      .right-content {
        flex: unset;
        width: 100%;
      }

      .right-content h1 {
        font-size: 40px;
      }

      .arrows {
        display: none;
      }
    }
  </style>
</head>
<body>

  <!-- Decorative Color Blobs -->
  <div class="color-blob top-left-blob"></div>
  <div class="color-blob bottom-right-blob"></div>

  <!-- Arrows (optional) -->
  <div class="arrows">
    <div class="arrow"></div>
    <div class="arrow"></div>
  </div>

  <!-- Hero Section -->
  <div class="hero-section">
    <div class="left-image">
      <img src="/resources/images/handshake.png" alt="Handshake Image" />
    </div>
    <div class="right-content">
    <h3>${msg}</h3>
      <h2>Our Executive will reach you soon<br></h2>
      <a href="index" class="cta-button">HOME</a>
    </div>
  </div>

</body>
</html>

