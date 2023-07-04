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
<html style="font-size: 16px;"><head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>List of Customer Details</title>
    <link rel="stylesheet" href="nicepage.css" media="screen">
<link rel="stylesheet" href="Customer_Details.css" media="screen">
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
    <meta property="og:title" content="Customer_Details">
    <meta property="og:type" content="website">
  </head>
  <body class="u-body u-xl-mode"><header class="u-align-center-sm u-align-center-xs u-clearfix u-header u-image u-header" id="sec-dbd7" data-image-width="1584" data-image-height="396"><div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <div class="u-clearfix u-layout-wrap u-layout-wrap-1">
          <div class="u-layout">
            <div class="u-layout-row">
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-1">
                <div class="u-container-layout u-container-layout-1"><span class="u-file-icon u-icon u-icon-1"><img src="images/user.png" alt=""></span>
                  <a href="StaffController?action=updateStaff&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-palette-3-dark-2 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-1">Update&nbsp;<br>Profile
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-2">
                <div class="u-container-layout u-container-layout-2"><span class="u-file-icon u-icon u-icon-2"><img src="images/customer-feedback.png" alt=""></span>
                  <a href="CustomerController?action=listCustomer&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-palette-3-dark-2 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-2">List of&nbsp;<br>customer details
                  </a>
                </div>
              </div>
              <div class="u-container-style u-layout-cell u-size-15 u-layout-cell-3">
                <div class="u-container-layout u-container-layout-3"><span class="u-file-icon u-icon u-icon-3"><img src="images/booking.png" alt=""></span>
                  <a href="BookingController?action=listBooking&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-palette-3-dark-2 u-btn u-btn-round u-button-style u-hover-palette-3-light-1 u-palette-3-base u-radius-50 u-btn-3">customer booking&nbsp;<br>information
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
    <section class="u-align-center u-clearfix u-image u-section-1" id="sec-2d40" data-image-width="1920" data-image-height="935">
      <div class="u-align-left u-clearfix u-sheet u-sheet-1">
        <a href="StaffController?action=backHome&staffid=<c:out value="${staff.staffid}"/>" class="u-border-2 u-border-hover-palette-3-light-1 u-border-white u-btn u-btn-round u-button-style u-palette-3-dark-1 u-radius-50 u-btn-1"><span class="u-file-icon u-icon u-icon-1"><img src="images/20176.png" alt=""></span>
        </a>
        <div class="u-expanded-width u-table u-table-responsive u-table-1">
          <table class="u-table-entity">
            <colgroup>
              <col width="11.2%">
              <col width="25.1%">
              <col width="10.4%">
              <col width="13.6%">
              <col width="11.4%">
              <col width="13.6%">
              <col width="14.700000000000006%">
            </colgroup>
            <thead class="u-align-center u-palette-3-dark-2 u-table-header u-table-header-1">
              <tr style="height: 32px;">
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell">Customer ID&nbsp;</th>
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell">Name</th>
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell">Address</th>
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell">Phone Number&nbsp;</th>
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell"></th>
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell">Action</th>
                <th class="u-border-2 u-border-palette-3-dark-3 u-table-cell"></th>
              </tr>
            </thead>
            <tbody class="u-palette-3-light-2 u-table-body u-table-body-1">
            	<c:forEach items="${customers}" var="customer" varStatus="customers">
              <tr style="height: 76px;">
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"><c:out value="${customer.custid}" /></td>
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"><c:out value="${customer.custname}" /></td>
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"><c:out value="${customer.custaddress}" /></td>
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"><c:out value="${customer.custphone}" /></td>
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"><a class="u-border-none u-btn u-button-style u-custom-color-3 u-hover-custom-color-4 u-btn-2" href="CustomerController?action=viewCustomer&custid=<c:out value="${customer.custid}" />&staffid=<c:out value="${staff.staffid}" />">View</a></td>
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"> <a class="u-border-none u-btn u-button-style u-hover-palette-3-base u-palette-3-light-1 u-btn-7" href="CustomerController?action=updateCustomerByStaff&custid=<c:out value="${customer.custid}" />&staffid=<c:out value="${staff.staffid}" />">Update</a></td>
                <td class="u-border-1 u-border-palette-3-dark-2 u-table-cell"><input type="hidden" id="custid-${customers.index}" value="<c:out value="${customer.custid}"/>"><button class="u-border-none u-btn u-button-style u-hover-palette-2-base u-palette-2-light-1 u-btn-4" onclick="confirmation('${customers.index}')">Delete</button></td>
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
			  var custid = $("#custid-" + index).val();
			 
			  console.log(custid);
			  var r = confirm("Are you sure you want to remove?");
			  if (r == true) {				 		  
				  location.href = 'CustomerController?action=deleteCustomer&custid=' + custid;
				  alert("Customer successfully removed");			
			  } else {				  
			      return false;	
			  }
		}
	</script>
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
</body></html>