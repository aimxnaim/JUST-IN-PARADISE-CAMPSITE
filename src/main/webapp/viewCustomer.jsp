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
    <title>View Customer Profile</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
	<link rel="stylesheet" href="View_Customer.css" media="screen">
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
    <meta property="og:title" content="View_Customer">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-align-center-sm u-align-center-xs u-clearfix u-header u-image u-header" id="sec-dbd7" data-image-width="1584" data-image-height="396"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2"><span class="u-file-icon u-icon u-icon-2"><img src="images/customer-feedback.png" alt=""></span>
                  <a href="CustomerController?action=listCustomer" class="u-border-2 u-border-palette-3-dark-2 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-2">List of&nbsp;<br>customer details
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-3"><img src="images/booking.png" alt=""></span>
                  <a href="BookingController?action=listBooking" class="u-border-2 u-border-palette-3-dark-2 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-3">customer booking&nbsp;<br>information
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-4">
                <div class="u-container-layout u-container-layout-4"><span class="u-file-icon u-icon u-icon-4"><img src="images/3094700.png" alt=""></span>
                  <a href="LogoutController" class="u-border-2 u-border-white u-btn u-btn-round u-button-style u-hover-palette-2-base u-palette-2-dark-2 u-radius-50 u-btn-4">log out</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-8973" data-image-width="6912" data-image-height="3456">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-border-2 u-border-white u-container-style u-group u-palette-3-light-1 u-group-1">
          <div class="u-container-layout u-container-layout-1">
            <h4 class="u-text u-text-default u-text-1"> Customer ID: <c:out value="${customer.custid}"/></h4>
            <h4 class="u-text u-text-default u-text-2"> Name: <c:out value="${customer.custname}"/></h4>
            <h4 class="u-text u-text-default u-text-3"> Address: <c:out value="${customer.custaddress}"/></h4>
            <h4 class="u-text u-text-default u-text-4"> Phone Number: <c:out value="${customer.custphone}"/></h4>
          </div>
        </div>
        <a href="CustomerController?action=listCustomer&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-grey-75 u-btn u-btn-round u-button-style u-custom-color-5 u-hover-palette-3-base u-radius-16 u-btn-1">CUSTOMER DETAILS</a>
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