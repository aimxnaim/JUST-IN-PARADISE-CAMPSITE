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
    <title>View Booking Staff</title>
    <link rel="stylesheet" href="nicepage6.css" media="screen">
<link rel="stylesheet" href="viewBookingStaff.css" media="screen">
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
    <meta property="og:title" content="viewBookingStaff">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-align-center-sm u-align-center-xs u-clearfix u-header u-image u-header" id="sec-dbd7" data-image-width="1584" data-image-height="396"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-gutter-70 u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-2">
                <div class="u-container-layout u-valign-top u-container-layout-2"><span class="u-file-icon u-icon u-icon-2"><img src="images/customer-feedback.png" alt=""></span>
                  <a href="CustomerController?action=listCustomer" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-1">LIST OF&nbsp;<br>CUSTOMER DETAILS
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-3"><img src="images/booking.png" alt=""></span>
                  <a href="BookingController?action=listBooking" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-2">CUSTOMER BOOKING&nbsp;<br>INFORMATION
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
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-3727" data-image-width="6912" data-image-height="3456">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-border-2 u-border-grey-75 u-container-style u-group u-palette-3-light-1 u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h4 class="u-text u-text-default u-text-1">Customer ID : <c:out value="${cust.custid}"/></h4>
            <h4 class="u-text u-text-default u-text-2">Customer Name : <c:out value="${cust.custname}"/></h4>
            <h4 class="u-text u-text-default u-text-3">Customer Address : <c:out value="${cust.custaddress}"/></h4>
            <h4 class="u-text u-text-default u-text-4">Customer Phone No : <c:out value="${cust.custphone}"/></h4>
            <h4 class="u-text u-text-default u-text-5">Booking ID : <c:out value="${booking.bookingid}"/></h4>
            <h4 class="u-text u-text-default u-text-6">Starting Date : <c:out value="${booking.startdate}"/></h4>
            <h4 class="u-text u-text-default u-text-7">Finishing Date : <c:out value="${booking.finishdate}"/></h4>
            <h4 class="u-text u-text-default u-text-8">Arrival Time : <c:out value="${booking.arrivaltime}"/></h4>
            <h4 class="u-text u-text-default u-text-9">Departure Time : <c:out value="${booking.departuretime}"/></h4>
            <h4 class="u-text u-text-default u-text-10">Organisation Name : <c:out value="${booking.orgname}"/></h4>
            <h4 class="u-text u-text-default u-text-11">Sound Equipment : <c:out value="${booking.soundeq}"/></h4>
          </div>
        </div>
        <a href="BookingController?action=listBooking&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-custom-color-5 u-btn u-btn-round u-button-style u-custom-color-7 u-hover-palette-3-light-1 u-radius-15 u-text-hover-black u-text-white u-btn-1">BACK TO BOOKING INFORMATION</a>
        <a href="StaffController?action=backHome" class="u-border-2 u-border-hover-palette-3-light-1 u-border-white u-btn u-btn-round u-button-style u-palette-3-dark-1 u-radius-50 u-btn-2"><span class="u-file-icon u-icon u-icon-1"><img src="images/20176.png" alt=""></span>
        </a>
      </div>
    </section>
    
    
    <footer class="u-align-center u-clearfix u-footer u-grey-80 u-footer" id="sec-a2eb"><div class="u-clearfix u-sheet u-sheet-1">
        <p class="u-small-text u-text u-text-variant u-text-1">2022 Malacca City | Website, Built, Maintained , and Hosted by The Code Honors members</p>
      </div></footer>
    <section class="u-backlink u-clearfix u-grey-80">
      <a class="u-link" href="https://nicepage.com/css-templates" target="_blank">
        <span>CSS Templates</span>
      </a>
      <p class="u-text">
        <span>created with</span>
      </p>
      <a class="u-link" href="https://nicepage.com/html-website-builder" target="_blank">
        <span>HTML Builder</span>
      </a>. 
    </section>
  </body>
</html>