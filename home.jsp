<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Embel Technologies Pvt Ltd</title>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Arial", sans-serif;
background-image: url('../image/logoEmbel.jpg');');
}

body, html {
  height: 100%;
  line-height: 1.2;
  
}

.w3-bar .w3-button {
  padding: 16px;
}
.carousel-item {
  position: relative;
}

.background {
        background-image: url('/User/staticContent/image/embel_image.jpg');
        background-size: cover; 
        background-repeat: no-repeat;
        z-index: -1;
        width: 1700px;
        height: 550px;
    }
    
    .backcolor{
     background-image: linear-gradient(90deg, #ff6402, #000d7b);
        background-size: cover; 
        background-repeat: no-repeat;
        z-index: -1;
        width: 1700px;
        height: 170px;
    
    }

.carousel-item::after {
  content: "";
  width: 100%;
  height: 100%;
  position: absolute;
  top: 0;
  left: 0;
 
  
}

.carousel-caption {
  height: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  z-index: 1;
}

.carousel-item p {
  max-width: 900px;
  margin: 0 auto 35px auto;
}

.carousel-control-prev {
  width: 100px;
  height: 90px;
  position: absolute;
  top: 50%;
  left: 0;
  background: var(--bs-primary);
  border-radius: 0 50px 50px 0;
  opacity: 1;
}

.carousel-control-prev:hover {
  background: var(--bs-secondary);
  transition: 0.8s;
}

.carousel-control-next {
  width: 90px;
  height: 60px;
  position: absolute;
  top: 50%;
  right: 0;
  background: var(--bs-primary);
  border-radius: 50px 0 0 50px;
  opacity: 1;
}

.carousel-control-next:hover {
  background: var(--bs-secondary);
  transition: 0.8s;
}

.carousel-caption .carousel-content a button.carousel-content-btn1 {
  background: var(--bs-secondary);
  color: var(--bs-dark);
  opacity: 1;
  border: 0;
  border-radius: 20px;
}

.carousel-caption .carousel-content a button.carousel-content-btn1:hover {
  background: var(--bs-primary);
  color: #ffffff;
  border: 0;
  opacity: 1;
  transition: 1s;
  border-radius: 20px;
}

.carousel-caption .carousel-content a button.carousel-content-btn2 {
  background: var(--bs-primary);
  color: var(--bs-white);
  opacity: 1;
  border: 0;
  border-radius: 20px;
}

.carousel-caption .carousel-content a button.carousel-content-btn2:hover {
  background: var(--bs-secondary);
  color: var(--bs-dark);
  border: 0;
  opacity: 1;
  transition: 1s;
  border-radius: 20px;
}
.p{

font-size: 40px;
}

.icon-bar {
  width: 100%;
  background-color: #B0E0E6;
  overflow: auto;
  
}

</style>

<body >

<div class="w3-top">
  <div class="w3-bar w3-white w3-card" id="myNavbar">
  <div class="icon-bar">
    <a href="#home" class="w3-bar-item w3-button w3-wide">LOGO</a>
    
    <div class="w3-right w3-hide-small">
      <a href="#about" class="w3-bar-item w3-button">ABOUT</a>
      <a href="#team" class="w3-bar-item w3-button"><i class="fa fa-user"></i> TEAM</a>
      <a href="#work" class="w3-bar-item w3-button"><i class="fa fa-th"></i> WORK</a>
      <a href="#contact" class="w3-bar-item w3-button"><i class="fa fa-envelope"></i> CONTACT</a>
    </div>
    </div>


    <a href="javascript:void(0)" class="w3-bar-item w3-button w3-right w3-hide-large w3-hide-medium" onclick="w3_open()">
      <i class="fa fa-bars"></i>
    </a>
  </div>
</div>

<nav class="w3-sidebar w3-bar-block w3-black w3-card w3-animate-left w3-hide-medium w3-hide-large" style="display:none" id="mySidebar">
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-large w3-padding-16">Close ×</a>
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">ABOUT</a>
  <a href="#work" onclick="w3_close()" class="w3-bar-item w3-button">WORK</a>
  <a href="#contact" onclick="w3_close()" class="w3-bar-item w3-button">CONTACT</a>
</nav>
   
    <div class="container-fluid px-0">
        <div id="carouselId" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-inner">
            
                <div class="carousel-item active">
                 
                    
                    
                    <div class="carousel-caption">
                        <div class="container carousel-content"><br><br><br>
                        <div class="background" align="center"><br><br><br><br><br><br>
                       
                            <p style="font-size:40px; color: orange">Best end to end IOT & Software solution</p>
                            <h1 style="font-size:100px; color: white;"><b>Embel Technologies</b></h1>
                            <p style="font-size:30px; color: white">Innovating for future...</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
    <div align="center">
            <div class="backcolor" style="margin-down:40px">
                        <h2 style="font-size:25px; color:white">200 Our Customer</h2>        
           
                        <h2 style="font-size:25px; color:white">508 Working Hours</h2>
                        
                        <h2 style="font-size:25px; color:white">300 Happy Clients</h2>
                        
                        <h2 style="font-size:25px; color:white">20 Award Received</h2>
                        </div>
                </div>

<div class="w3-container" style="padding:128px 16px" id="about">
  <h3 class="w3-center" style="font-size:50px; color: blue">ABOUT THE COMPANY</h3>
  <p class="w3-center" style="font-size: 30px">Key features of our company</p>
  <div class="w3-row-padding w3-center" style="margin-top:64px">
    <div class="w3-quarter">
      <i class="fa fa-desktop w3-margin-bottom w3-jumbo w3-center"></i>
      <p style="font-size: 30px;color: purple">Responsive</p>
      <p style="font-size: 20px">EMBEL is a technology consulting organisation, specialising in IoT, Hardware Engineering & software development, software services.

EMBEL solutions are focused on modern technologies with a laser-sharp focus on creating and optimizing value for customers.

A team of experienced people which brings a good mixture of expertise in different domains including Retail, Ecommerce, manufacturing, banking, telecom, insurance, industrial automation, etc.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-heart w3-margin-bottom w3-jumbo"></i>
      <p style="font-size: 30px;color: purple">Passion</p>
      <p style="font-size: 20px">We are passionate, results-oriented to Build Product based application & IOT Products. Team working on your business for connecting dots in Marketing, Products Design & Development.</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-diamond w3-margin-bottom w3-jumbo"></i>
      <p style="font-size: 30px;color: purple">Design</p>
      <p style="font-size: 20px">Circuit design is the first step for every electronics design project. This require the creation of a schematic diagram which defines how electronic component are logically connected on a printed circuit board. Design enablement. Agile transformation. Product management. Cultural transformation.
</p>
    </div>
    <div class="w3-quarter">
      <i class="fa fa-cog w3-margin-bottom w3-jumbo"></i>
      <p style="font-size: 30px;color: purple">Support</p>
      <p style="font-size: 20px">24/7 Hours Support We provide our customers with live help at 24/7 Hours.</p>
    </div>
  </div>
</div>

<div class="w3-container" style="padding:128px 16px" id="work">
  <h3 class="w3-center" style="font-size:50px; color: blue">OUR WORK</h3>
  <p style="font-size: 20px">Embel Technologies has helped countless businesses step into the future with its latest solution architecture technologies. Since our inception 7 years ago, Embel Technologies has been at the forefront of digital engineering and innovation for many national and international clients.Our dedicated team of experts and developers is known for its highly customized architecture solutions crafted according to your specific business needs.</p>
</div>


<div id="modal01" class="w3-modal w3-black" onclick="this.style.display='none'">
  <span class="w3-button w3-xxlarge w3-black w3-padding-large w3-display-topright" title="Close Modal Image">×</span>
  <div class="w3-modal-content w3-animate-zoom w3-center w3-transparent w3-padding-64">
    <img id="img01" class="w3-image">
    <p id="caption" class="w3-opacity w3-large"></p>
  </div>
</div>


<div class="w3-container w3-light-grey" style="padding:128px 16px" id="contact">
  <h3 class="w3-center" style="font-size:50px; color: blue">CONTACT</h3>
  <p class="w3-center w3-large">Lets get in touch. Send us a message:</p>
  <div style="margin-top:48px">
    <p style="font-size: 20px"><i class="fa fa-map-marker fa-fw w3-xxlarge w3-margin-right"></i>2nd floor, Vanashree Palace, Above Chate Classes, Near Tapodham Bus Stop, NDA Road, Warje Naka, Pune, Maharashtra-411058, US</p>
    <p style="font-size: 20px"><i class="fa fa-phone fa-fw w3-xxlarge w3-margin-right"></i> tel:+918888741044</p>
    <p style="font-size: 20px"><i class="fa fa-envelope fa-fw w3-xxlarge w3-margin-right"> </i>Email: careers@embel.co.in</p>
    <br>
    <form target="_blank">
      <p><input class="w3-input w3-border" type="text" placeholder="Name" required name="Name"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Email" required name="Email"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Subject" required name="Subject"></p>
      <p><input class="w3-input w3-border" type="text" placeholder="Message" required name="Message"></p>
      <p>
        <button class="w3-button w3-black" type="submit">
          <i class="fa fa-paper-plane"></i> SEND MESSAGE
        </button>
      </p>
    </form>
</div>

<footer class="w3-center w3-black w3-padding-64">
  <a href="#home" class="w3-button w3-light-grey"><i class="fa fa-arrow-up w3-margin-right"></i>To the top</a>
  <div class="w3-xlarge w3-section">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
  </div>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" title="W3.CSS" target="_blank" class="w3-hover-text-green">w3.css</a></p>
</footer>
 
</body>
</html>