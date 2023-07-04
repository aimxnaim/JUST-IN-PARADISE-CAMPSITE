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
    <title>Booking History</title>
    <link rel="stylesheet" href="nicepage2.css" media="screen">
<link rel="stylesheet" href="History_Booking.css" media="screen">
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
    <meta property="og:title" content="History_Booking">
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
    <section class="u-clearfix u-image u-section-1" id="sec-066f" data-image-width="1050" data-image-height="600">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="12.4%">
              <col width="12.4%">
              <col width="12.4%">
              <col width="12.4%">
              <col width="13.9%">
              <col width="12.7%">
              <col width="11.1%">
              <col width="12.9%">
            </colgroup>
            <thead class="u-align-center u-grey-60 u-table-header u-table-header-1">
              <tr style="height: 28px;">
                <th class="u-border-1 u-border-black u-table-cell">Booking ID</th>
                <th class="u-border-1 u-border-black u-table-cell">Starting Date</th>
                <th class="u-border-1 u-border-black u-table-cell">Finishing Date</th>
                <th class="u-border-1 u-border-black u-table-cell">Arrival Time&nbsp;</th>
                <th class="u-border-1 u-border-black u-table-cell">Departure Time</th>
                <th class="u-border-1 u-border-black u-table-cell">Sound Equipment</th>
                <th class="u-border-1 u-border-black u-table-cell">View Booking</th>
                <th class="u-border-1 u-border-black u-table-cell">Delete Booking</th>
              </tr>
            </thead>
            <tbody class="u-palette-5-light-1 u-table-body u-table-body-1">
              <c:forEach items="${bookings}" var="booking" varStatus="bookings">
              <tr style="height: 76px;">
                <td class="u-border-1 u-border-grey-30 u-table-cell"><c:out value="${booking.bookingid}" /></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><c:out value="${booking.startdate}" /></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><c:out value="${booking.finishdate}" /></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><c:out value="${booking.arrivaltime}" /></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><c:out value="${booking.departuretime}" /></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><c:out value="${booking.soundeq}" /></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><a class="u-border-none u-btn u-button-style u-custom-color-2 u-hover-custom-color-4 u-btn-1" href="BookingController?action=viewBooking&custid=<c:out value="${customer.custid}" />&bookingid=<c:out value="${booking.bookingid}" />">View</a></td>
                <td class="u-border-1 u-border-grey-30 u-table-cell"><input type="hidden" id="bookingid-${bookings.index}" value="<c:out value="${booking.bookingid}"/>"><button class="u-border-none u-btn u-button-style u-hover-palette-2-base u-palette-2-light-1 u-btn-2" onclick="confirmation('${bookings.index}')">Delete</button></td>
              </tr>
              </c:forEach>
            </tbody>
          </table>
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
    
	<script>
		function confirmation(index){
			  var bookingid = $("#bookingid-" + index).val();
			 
			  console.log(bookingid);
			  var r = confirm("Are you sure you want to cancel?");
			  if (r == true) {				 		  
				  location.href = 'BookingController?action=deleteBooking&bookingid=' + bookingid;
				  alert("Booking successfully deleted");			
			  } else {				  
			      return false;	
			  }
		}
	</script>
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
  </body>
</html>