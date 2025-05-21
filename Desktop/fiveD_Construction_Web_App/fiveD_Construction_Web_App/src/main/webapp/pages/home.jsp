<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Hendles Builders</title>
<style type="text/css">

/* Reset and base styles */
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Helvetica Neue', sans-serif;
}

body {
	line-height: 1.6;
	color: #222;
	background-color: #fff;
}

img {
	max-width: 100%;
	display: block;
	border-radius: 8px;
}

h1, h2, h3, h4 {
	margin-bottom: 10px;
}

/* Hero Section */
.hero {
	background: url('/resources/images/cover.jpg') center/cover no-repeat;
	height: 100vh;
	position: relative;
	display: flex;
	align-items: center;
	justify-content: left;
	color: white;
}

.overlay {
	background-color: rgba(0, 34, 68, 0.1);
	padding: 2rem;
	text-align: center;
	border-radius: 12px;
}

.btn {
	background-color: #001e3c;
	color: white;
	padding: 0.75rem 1.5rem;
	text-decoration: none;
	font-weight: bold;
	border-radius: 8px;
	margin-top: 1rem;
	display: inline-block;
}

/* About Section */
.about {
	display: flex;
	padding: 4rem 2rem;
	gap: 2rem;
	background-color: #111;
	color: white;
}

.about .text {
	flex: 1;
}

.about .image {
	flex: 1;
}

/* Services */
.services {
	padding: 2rem 2rem;
	background-color: #f7f9fc;
	text-align: center;
}

.service-items {
	display: flex;
	justify-content: space-around;
	margin-top: 2rem;
	flex-wrap: wrap;
	gap: 1rem;
}

.service-items div {
	flex: 1;
	max-width: 450px;
}

/* Projects */
.projects {
	padding: 4rem 2rem;
	background-color: #fff;
	text-align: center;
}

.project-items {
	display: flex;
	justify-content: space-around;
	flex-wrap: wrap;
	gap: 2rem;
	margin-top: 2rem;
}

.project-items div {
	flex: 1;
	max-width: 300px;
}

/* Stats */
.stats {
	display: flex;
	justify-content: space-around;
	padding: 3rem 2rem;
	background-color: #ccc;
	text-align: center;
}

.stats div {
	flex: 1;
}

/* Clients */
.clients {
	padding: 2rem;
	background-color: white;
	text-align: center;
}

.clients .logos {
	display: flex;
	justify-content: center;
	flex-wrap: wrap;
	gap: 3rem;
	font-weight: bold;
	color: #444;
}

/* Testimonials */
.testimonials {
	padding: 4rem 2rem;
	background-color: #f7f9fc;
	text-align: center;
}

.testimonial-items {
	display: flex;
	flex-direction: column;
	gap: 2rem;
	max-width: 800px;
	margin: auto;
}

blockquote {
	font-style: italic;
	border-left: 4px solid #00aaff;
	padding-left: 1rem;
	color: #333;
}

/* Footer */
footer {
	background: url('footer-image.jpg') center/cover no-repeat;
	color: black;
	padding: 3rem 2rem;
	display: flex;
	flex-wrap: wrap;
	gap: 2rem;
	justify-content: space-between;
}

footer div {
	flex: 1;
	min-width: 200px;
}

footer a {
	color: #00aaff;
	display: block;
	margin-top: 0.5rem;
	text-decoration: none;
}

@media ( max-width : 768px) {
	.about, .service-items, .project-items, .stats, footer {
		flex-direction: column;
		text-align: center;
	}
}
</style>
</head>
<body>

	<jsp:include page="navbar.jsp"></jsp:include>



	<header class="hero">
		<div class="overlay">
			<h1>
				Revitalize your<br />historic structure
			</h1>
			<a href="signup" class="btn">Book an appointment</a>
		</div>
	</header>

	<section class="about">
		<div class="text">
			<h2>We are a local business focusing on historic preservation,
				using traditional materials and techniques.</h2>
			<p>Write a paragraph that talks about your company here. You can
				talk about your company's background, history, mission, vision, or
				philosophy. Anything that will help build a connection between you
				and them, that hopefully leads into a working relationship.</p>
		</div>
		<div class="image">
			<img src="/resources/images/modern-building.jpg"
				alt="Historic Building" />
		</div>
	</section>

	<section class="services">
		<h2>Services</h2>
		<p>Write a paragraph that talks about your construction company
			here. Convince your prospective clients to choose you and your team
			for their construction needs by talking about your unique services,
			as well as your commitment to getting the job done.</p>
		<div class="service-items">
			<div>
				<img src="/resources/images/residential.jpg"
					alt="Residential Building" />
				<h3>Residential Building</h3>
			</div>
			<div>
				<img src="/resources/images/commercial.jpg"
					alt="Commercial Building" />
				<h3>Commercial Building</h3>
			</div>
			<div>
				<img src="/resources/images/Renovation-construction.jpg"
					alt="Renovation Building" />
				<h3>Renovation Building</h3>
			</div>
		</div>
	</section>

	<section class="projects">
		<h2>Projects</h2>
		<div class="project-items">
			<div>
				<img src="obsidian.jpg" alt="Obsidian Bank" />
				<h4>OBSIDIAN BANK</h4>
			</div>
			<div>
				<img src="eureka.jpg" alt="Eureka Vision Theater" />
				<h4>EUREKA VISION THEATER</h4>
			</div>
			<div>
				<img src="roseton.jpg" alt="Roseton Building" />
				<h4>ROSETON BUILDING</h4>
			</div>
		</div>
	</section>

	<section class="stats">
		<div>
			<h3>Year Established</h3>
			<p>2010</p>
		</div>
		<div>
			<h3>Skilled Artisans</h3>
			<p>56</p>
		</div>
		<div>
			<h3>Completed Projects</h3>
			<p>100+</p>
		</div>
	</section>

	<section class="clients">
		<div class="logos">
			<p>SANTA SOLANA POST</p>
			<p>THE PLEW</p>
			<p>MERION WEEKLY</p>
			<p>FRELL MEDIA</p>
		</div>
	</section>

	<section class="testimonials">
		<h2>From Our Satisfied Clients</h2>
		<div class="testimonial-items">
			<blockquote>
				<p>Boost your product and service's credibility by adding
					testimonials from your clients.</p>
				<footer>- Bass Co.</footer>
			</blockquote>
			<blockquote>
				<p>People love recommendations so feedback from others who've
					tried it is invaluable.</p>
				<footer>- Milchuer Law</footer>
			</blockquote>
			<blockquote>
				<p>Add them here!</p>
				<footer>- Studio Ralla</footer>
			</blockquote>
		</div>
	</section>

	<footer id="contact">
		<div class="contact-info">
			<h3>5D Construction</h3>
			<p>
				New Manish Nagar<br />Nagpur, Maharashtra
			</p>
			<p>mob: 99998888**</p>
			<p>Email: hello@gmail.com</p>
		</div>
		<div class="office-hours">
			<h3>Office hours</h3>
			<p>
				Monday to Friday<br />9:00 am to 5:00 pm
			</p>
			<p>Weekends by appointment</p>
		</div>
		<div class="social">
			<h3>Stay connected</h3>
			<a target="_blank" href="http://www.instagram.com">Instagram</a> <a
				target="_blank" href="http://www.facebook.com">Facebook</a> <a
				target="_blank" href="http://www.google.com">Google</a>
		</div>
	</footer>
</body>
</html>
