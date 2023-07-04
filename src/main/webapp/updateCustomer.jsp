<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Update Customer Profile</title>
    <link rel="stylesheet" href="nicepage2.css" media="screen">
	<link rel="stylesheet" href="Update_Customer_Profile.css" media="screen">
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
    <meta property="og:title" content="Update_Customer_Details">
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
    <section class="u-clearfix u-image u-section-1" id="sec-e47e" data-image-width="1920" data-image-height="940">
      <div class="u-clearfix u-sheet u-sheet-1">
        <a href="CustomerController?action=backHome&custid=<c:out value="${customer.custid}"/>" class="u-border-2 u-border-hover-palette-5-base u-border-white u-btn u-btn-round u-button-style u-palette-5-dark-1 u-radius-50 u-btn-1"><span class="u-file-icon u-icon u-icon-1"><img src="images/20176.png" alt=""></span>
        </a>
        <div class="u-form u-form-1">
          <form action="CustomerController" method="POST" class="u-clearfix u-form-spacing-10 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 10px;">
            <div class="u-form-group u-form-name u-label-left u-form-group-1">
              <label for="custid" class="u-custom-font u-font-raleway u-label u-spacing-21 u-label-1">Customer ID</label>
              <input type="text" id="custid" name="custid" class="u-border-4 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white" value="<c:out value="${customer.custid}"/>" required="required" autofocus="autofocus" readonly>
            </div>
            <div class="u-form-group u-form-name u-label-left">
              <label for="custname" class="u-custom-font u-font-raleway u-label u-spacing-21 u-label-2">Name</label>
              <input type="text" placeholder="Enter your Name" id="custname" name="custname" class="u-border-4 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white" value="<c:out value="${customer.custname}"/>" required="required" autofocus="autofocus">
            </div>
            <div class="u-form-address u-form-group u-label-left u-form-group-3">
              <label for="custaddress" class="u-custom-font u-font-raleway u-label u-spacing-21 u-label-3">Address</label>
              <input type="text" placeholder="Enter your address" id="custaddress" name="custaddress" class="u-border-4 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white" value="<c:out value="${customer.custaddress}"/>" required="">
            </div>
            <div class="u-form-group u-form-phone u-label-left u-form-group-4">
              <label for="custphone" class="u-custom-font u-font-raleway u-label u-spacing-21 u-label-4">Phone</label>
              <input type="tel" pattern="\+?\d{0,3}[\s\(\-]?([0-9]{2,3})[\s\)\-]?([\s\-]?)([0-9]{3})[\s\-]?([0-9]{2})[\s\-]?([0-9]{2})" placeholder="Enter your phone (e.g. +60123456789)" id="custphone" name="custphone" value="<c:out value="${customer.custphone}"/>"  class="u-border-4 u-border-grey-30 u-input u-input-rectangle u-radius-15 u-white" required="">
            </div>
            <div class="u-form-address u-form-group u-label-left u-form-group-3">
               <input type="hidden" name="userid" value="<c:out value="${customer.userid}"/>"  class="u-border-3 u-border-grey-70 u-input u-input-rectangle u-radius-30 u-text-grey-90 u-white">
            </div>
            <div class="u-form-group u-form-submit u-label-left">
              <label class="u-custom-font u-font-raleway u-label u-spacing-21 u-label-5"></label>
              <div class="u-align-right u-btn-submit-container">
                <input type="submit" value="Update" class="u-border-2 u-border-grey-75 u-btn u-btn-round u-btn-submit u-button-style u-custom-font u-font-ubuntu u-palette-1-dark-2 u-radius-17 u-btn-2">
              </div>    
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