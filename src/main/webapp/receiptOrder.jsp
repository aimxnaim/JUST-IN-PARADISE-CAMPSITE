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
    <meta name="keywords" content="Just-In Paradise Campsite">
    <meta name="description" content="">
    <title>receiptOrder</title>
    <link rel="stylesheet" href="nicepage3.css" media="screen">
	<link rel="stylesheet" href="receiptOrder.css" media="screen">
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
    <meta property="og:title" content="receiptOrder">
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
                  <a href="BookingController?action=addBooking&custid=<c:out value="${customer.custid}"/>" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-5-dark-2 u-palette-5-base u-radius-50 u-btn-1">Book&nbsp;<br>campsite
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-3"><img src="images/6462711.png" alt=""></span>
                  <a href="BookingController?action=pastBooking&custid=<c:out value="${customer.custid}"/>" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-5-dark-2 u-palette-5-base u-radius-50 u-btn-2">history of&nbsp;<br>past booking
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-4">
                <div class="u-container-layout u-container-layout-4"><span class="u-file-icon u-icon u-icon-4"><img src="images/3094700.png" alt=""></span>
                  <a href="LogoutController" class="u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-palette-2-base u-palette-2-dark-2 u-radius-50 u-btn-3">log out</a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <a href="CustomerController?action=updateCustomer&custid=<c:out value="${customer.custid}"/>" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-5-dark-2 u-palette-5-base u-radius-50 u-btn-4">Update&nbsp;<br>Profile
        </a>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-cd21" data-image-width="1428" data-image-height="2000">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-group u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h1  class="u-align-center u-text u-text-body-color u-text-1">Just-In Paradise Campsite</h1>
            <h3 class="u-align-center u-text u-text-body-color u-text-2">Order Receipt</h3>
            <h4 class="u-align-center u-text u-text-body-color u-text-3">- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -</h4>
            <h5 class="u-align-left u-text u-text-body-color u-text-4">Booking ID: <c:out value="${booking.bookingid}"/></h5>
             <h5 class="u-align-left u-text u-text-grey-90 u-text-5"> Site Package: <c:out value="${site.sitepackage}"/></h5>
            <h5 class="u-align-left u-text u-text-grey-90 u-text-5"> Starting Date: <c:out value="${booking.startdate}"/></h5>
            <h5 class="u-align-left u-text u-text-grey-90 u-text-6"> Finishing Date:<c:out value="${booking.finishdate}"/></h5>
            <h5 class="u-align-left u-text u-text-grey-90 u-text-7"> Arrival Time: <c:out value="${booking.arrivaltime}"/></h5>
            <h5 class="u-align-left u-text u-text-grey-90 u-text-8"> Departure Time: <c:out value="${booking.departuretime}"/></h5>
           <h5 class="u-align-left u-text u-text-body-color u-text-10">Total Price: RM<c:out value="${price}"/></h5>
		
          </div>
        </div>
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