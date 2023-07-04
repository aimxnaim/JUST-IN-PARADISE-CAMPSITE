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
    <title>Booking Form</title>
    <link rel="stylesheet" href="nicepage2.css" media="screen">
	<link rel="stylesheet" href="Customer_Booking_Form.css" media="screen">
    <script class="u-script" type="text/javascript" src="jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 4.12.17, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i|Open+Sans:300,300i,400,400i,500,500i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Ubuntu:300,300i,400,400i,500,500i,700,700i">
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
    <meta name="theme-color" content="#478ac9">
    <meta property="og:title" content="Customer_Booking_Form">
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
    <section class="u-clearfix u-image u-section-1" id="sec-cd59" data-image-width="1428" data-image-height="2000">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-left u-form u-form-1">
          <form action="BookingController" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;">
            <div class="u-form-group u-form-radiobutton u-label-top u-form-group-1">
              <div class="u-form-radio-button-wrapper">
              	<label for="date-9066" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-4">PLEASE TICK WHICH PACKAGE YOU ARE RESERVING</label><br>
                <input type="radio" name="siteid" value="1">
                <label class="u-label u-label-1" for="siteid">CAMPING GROUND FACILITY (160-320 people @ RM 185 / per night)</label>
                <br>
                <input type="radio" name="siteid" value="2">
                <label class="u-label u-label-2" for="siteid">CONFERENCE FACILITY (80-160 people @ RM 195 /per night)</label>
                <br>
                <input type="radio" name="siteid" value="3">
                <label class="u-label u-label-3" for="siteid">FAMILY CAMPING (up to 20 people @ RM 125 / per night)</label>
                <br>
              </div>
            </div>
            <div class="u-form-date u-form-group u-label-top u-form-group-2">
              <label for="startdate" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-4">Starting Date of the Camp</label>
              <input type="date" placeholder="MM/DD/YYYY" id="startdate" name="startdate" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="">
            </div>
            <div class="u-form-date u-form-group u-label-top u-form-group-3">
              <label for="finishdate" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-5">Finishing Date of the Camp</label>
              <input type="date" placeholder="MM/DD/YYYY" id="finishdate" name="finishdate" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="">
            </div>
            <div class="u-form-group u-form-name u-label-top u-form-group-4">
              <label for="arrivaltime" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-6">Arrival Time</label>
              <input type="time" placeholder="- - : - -   - - " id="arrivaltime" name="arrivaltime" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="">
            </div>
            <div class="u-form-address u-form-group u-label-top u-form-group-5">
              <label for="departuretime" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-7">Departure Time</label>
              <input type="time" placeholder="- - : - -   - - " id="departuretime" name="departuretime" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="">
            </div>
            <div class="u-form-group u-form-name u-label-top">
              <label for="orgname" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-8">Organisation Name</label>
              <input type="text" placeholder="Enter your Organisation Name" id="orgname" name="orgname" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="">
            </div>
            <div class="u-form-group u-form-select u-label-top u-form-group-7">
              <label for="select-f13f" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-9">Just-In Paradise Campsite's "terms &amp; conditions" and Prices has been read, understood and are accepted by me and my organization :</label>
              <div class="u-form-select-wrapper">
                <select id="tnc" name="tnc" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="value="true"">
                  <option value="true">Yes</option>
                  <option value="false" disabled="disabled">No</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-form-group u-form-select u-label-top u-form-group-8">
              <label for="select-28de" class="u-custom-font u-font-raleway u-label u-spacing-57 u-label-10">Do you want to make use Sound of Equipment &amp; Sound Engineer @ RM 150</label>
              <div class="u-form-select-wrapper">
                <select id="soundeq" name="soundeq" class="u-border-4 u-border-grey-40 u-input u-input-rectangle u-radius-17 u-white" required="required">
                  <option value="Yes">Yes</option>
                  <option value="No">No</option>
                </select>
                <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
              </div>
            </div>
            <div class="u-form-group u-form-name u-label-top u-form-group-4">
              <input type="hidden" id="custid" name="custid" class="u-border-5 u-border-palette-3-dark-1 u-input u-input-rectangle u-radius-20 u-white" value="<c:out value="${customer.custid}"/>" readonly>
            </div>
            <div class="u-align-right u-form-group u-form-submit u-label-top">
              <input type="submit" value="Submit" class="u-border-2 u-border-grey-75 u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-ubuntu u-palette-1-dark-2 u-radius-17 u-btn-1">
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
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