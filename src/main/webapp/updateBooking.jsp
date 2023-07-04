<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
  response.addHeader("Pragma", "no-cache");
  response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
  response.addHeader("Cache-Control", "pre-check=0, post-check=0");
  response.setDateHeader("Expires", 0);

  if(session.getAttribute("sessionEmail")==null)    
      response.sendRedirect("/JUST-IN PARADISE CAMPSITE (1)/login.jsp");
  %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>updateBooking</title>
    <link rel="stylesheet" href="nicepage7.css" media="screen">
<link rel="stylesheet" href="updateBooking.css" media="screen">
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
    <meta property="og:title" content="updateBooking">
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
                <div class="u-container-layout u-valign-top u-container-layout-2"><span class="u-file-icon u-icon u-icon-2"><img src="images/customer-feedback.png" alt=""></span>
                  <a href="CustomerController?action=listCustomer&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-1">LIST OF&nbsp;<br>CUSTOMER DETAILS
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-3"><img src="images/booking.png" alt=""></span>
                  <a href="BookingController?action=listBooking&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-2">CUSTOMER BOOKING&nbsp;<br>INFORMATION
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
        <a href="StaffController?action=updateStaff&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-palette-5-dark-3 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-4">Update&nbsp;<br>Profile
        </a>
      </div></header>
    <section class="u-clearfix u-image u-section-1" id="sec-3727" data-image-width="6912" data-image-height="3456">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-form u-palette-3-light-2 u-radius-44 u-form-1">
          <form action="BookingController" method="POST" class="u-clearfix u-form-spacing-16 u-form-vertical u-inner-form" source="custom" name="form" style="padding: 34px;">
            
            
            <div class="u-form-group u-form-name u-label-left">
              <label for="name-4930" class="u-label u-spacing-89 u-label-1">Customer ID</label>
              <input type="text" id="name-4930" name="custid" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-1" value="<c:out value="${booking.custid}"/>" required="" readonly>
            </div>
            <div class="u-form-date u-form-group u-label-left u-form-group-2">
              <label for="date-4e15" class="u-label u-spacing-89 u-label-2">Starting Date </label>
              <input type="date" id="date-4e15" name="startdate" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-2" value="<c:out value="${booking.startdate}"/>" required="">
            </div>
            <div class="u-form-date u-form-group u-label-left u-form-group-3">
              <label for="date-ed94" class="u-label u-spacing-89 u-label-3">Finishing Date</label>
              <input type="date" id="date-ed94" name="finishdate" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-3" value="<c:out value="${booking.finishdate}"/>" required="">
            </div>
            <div class="u-form-date u-form-group u-label-left u-form-group-4">
              <label for="date-39c9" class="u-label u-spacing-89 u-label-4">Arrival Time</label>
              <input type="time" id="date-39c9" name="arrivaltime" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-4" value="<c:out value="${booking.arrivaltime}"/>" required="">
            </div>
            <div class="u-form-date u-form-group u-label-left u-form-group-5">
              <label for="date-58aa" class="u-label u-spacing-89 u-label-5">Departure Time </label>
              <input type="time" id="date-58aa" name="departuretime" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-5" value="<c:out value="${booking.departuretime}"/>" required="">
            </div>
            <div class="u-form-email u-form-group u-label-left">
              <label for="email-4930" class="u-label u-spacing-89 u-label-6">Organisation Name</label>
              <input type="text" id="email-4930" name="orgname" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-6" value="<c:out value="${booking.orgname}"/>" required="">
            </div>
            <div class="u-form-group u-form-select u-label-left u-form-group-7">
              <label for="select-b805" class="u-label u-spacing-89 u-label-7">Sound Of Equipment / Sound Engineer</label>
              <div class="u-form-select-wrapper">
              <input type="text" id="soundeq" name="soundeq" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-1" value="<c:out value="${booking.soundeq}"/>" required="">
              </div>              
              <input type="hidden" id="date-58aa" name="tnc" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-5" value="<c:out value="${booking.tnc}"/>" ><br>                       
              <input type="hidden" id="date-58aa" name="bookingid" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-5" value="<c:out value="${booking.bookingid}"/>" >            
              <input type="hidden" id="date-58aa" name="staffid" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-5" value="<c:out value="${staff.staffid}"/>" >            
              <input type="hidden" id="date-58aa" name="siteid" class="u-border-3 u-border-grey-30 u-custom-font u-input u-input-rectangle u-radius-15 u-text-font u-white u-input-5" value="<c:out value="${booking.siteid}"/>" >
            
            </div>
            <div class="u-form-group u-form-submit u-label-left">
              <label class="u-label u-spacing-89 u-label-8"></label>
              <div class="u-align-right u-btn-submit-container">
                 <input type="submit" value="Update" class="u-border-4 u-border-grey-75 u-border-hover-white u-btn u-btn-round u-btn-submit u-button-style u-custom-color-7 u-hover-custom-color-5 u-radius-17 u-btn-1">
              </div>
            </div>
            <div class="u-form-send-message u-form-send-success"> Thank you! Your message has been sent. </div>
            <div class="u-form-send-error u-form-send-message"> Unable to send your message. Please fix errors then try again. </div>
            <input type="hidden" value="" name="recaptchaResponse">
          </form>
        </div>
        <a href="BookingController?action=backHome&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-hover-palette-3-light-1 u-border-white u-btn u-btn-round u-button-style u-palette-3-dark-1 u-radius-50 u-btn-2"><span class="u-file-icon u-icon u-icon-1"><img src="images/20176.png" alt=""></span>
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