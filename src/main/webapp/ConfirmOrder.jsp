<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
  response.setDateHeader("Expires", 0);

  if(session.getAttribute("sessionEmail")==null)    
      response.sendRedirect("/JUST-IN PARADISE CAMPSITE (PRESENTATION)/login.jsp");
  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>ConfirmOrder</title>
    <link rel="stylesheet" href="nicepage3.css" media="screen">
<link rel="stylesheet" href="ConfirmOrder.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.17, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="ConfirmOrder">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-align-center-sm u-align-center-xs u-clearfix u-header u-image u-header" id="sec-dbd7" data-image-width="1584" data-image-height="396"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-gutter-70 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-17 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1"><span class="u-file-icon u-icon u-icon-1"><img src="images/user.png" alt=""></span>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2"><span class="u-file-icon u-icon u-icon-2"><img src="images/6938607.png" alt=""></span>
                  <a href="https://nicepage.cloud" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-5-dark-2 u-palette-5-base u-radius-50 u-btn-1">Book&nbsp;<br>campsite
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-3"><img src="images/6462711.png" alt=""></span>
                  <a href="https://nicepage.com/html-templates" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-5-dark-2 u-palette-5-base u-radius-50 u-btn-2">history of&nbsp;<br>past booking
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-4">
                <div class="u-container-layout u-container-layout-4"><span class="u-file-icon u-icon u-icon-4"><img src="images/3094700.png" alt=""></span>
                  <a href="https://nicepage.com/c/real-estate-html-templates" class="u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-palette-2-base u-palette-2-dark-2 u-radius-50 u-btn-3">log out</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a href="https://nicepage.com/c/slider-html-templates" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-5-dark-2 u-palette-5-base u-radius-50 u-btn-4">Update&nbsp;<br>Profile
        </a>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-2c15" data-image-width="1428" data-image-height="2000">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-border-1 u-border-white u-container-style u-group u-palette-4-dark-2 u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h4 class="u-text u-text-default u-text-1">Booking ID :&nbsp;</h4>
            <h4 class="u-text u-text-default u-text-2">Starting Date :&nbsp;</h4>
            <h4 class="u-text u-text-default u-text-3">Finishing Date :&nbsp;</h4>
            <h4 class="u-text u-text-default u-text-4">Arrival Time :&nbsp;</h4>
            <h4 class="u-text u-text-default u-text-5">Departure Time :&nbsp;</h4>
            <h4 class="u-text u-text-default u-text-6">Sound Equipment :&nbsp;</h4>
            <h4 class="u-text u-text-default u-text-7">Total Price :</h4>
          </div>
        </div>
        <a href="https://nicepage.com/c/art-design-html-templates" class="u-border-2 u-border-hover-palette-5-base u-border-white u-btn u-btn-round u-button-style u-palette-1-dark-1 u-radius-50 u-btn-1"><span class="u-file-icon u-icon u-icon-1"><img src="images/709606.png" alt=""></span>
        </a>
        <a href="https://nicepage.com/c/tabs-website-templates" class="u-border-2 u-border-grey-75 u-btn u-btn-round u-button-style u-hover-palette-5-dark-1 u-palette-5-dark-2 u-radius-6 u-btn-2">CONFIRM ORDER<br>
        </a>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-a2eb"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">2022 Malacca City | Website, Built, Maintained , and Hosted by The Code Honors members</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/website-templates" target="_blank">
        <span>Website Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="" target="_blank">
        <span>Website Builder Software</span>
      </a>. 
    </section>
  </body>
</html>