<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Train Registration</title>
</head>
<style>
.topright {
  position: absolute;
  top: 8px;
  right: 16px;
  font-size: 18px;
}
* {
  box-sizing: border-box;
}

body {
  background:url("images/img3.jpg") no-repeat center fixed;
  background-size:cover;
  font-family:sans-serif;
}

#regForm {
  background-color: #ffffcc;
  margin: 100px auto;                                                                                                                               
  font-family: sans-serif;
  padding: 40px;
  width: 70%;
  min-width: 300px;
}

h1 {
  text-align: center;  
}

input {
  padding: 10px;
  width: 100%;
  font-size: 17px;
  font-family: Raleway;
  border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
  background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
  display: none;
}

button {
  background-color: #4CAF50;
  color: #ffffff;
  border: none;
  padding: 10px 20px;
  font-size: 17px;
  font-family: Raleway;
  cursor: pointer;
}

button:hover {
  opacity: 0.8;
}

#prevBtn {
  background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbbbbb;
  border: none;  
  border-radius: 50%;
  display: inline-block;
  opacity: 0.5;
}

.step.active {
  opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
  background-color: #4CAF50;
}
</style>
<% 
response.setDateHeader("Expires", 0);
if ((session.getAttribute("userid")== null) || (session.getAttribute("userid")== "")) {
	response.sendRedirect("timeout.htm");
	
  }  else {  if((session.getAttribute("userid")).equals("shreyas")){%>	
 

<body>
 <script type="text/javascript">
  window.history.forward();
  function noBcack()
  {
	  window.history.forward();
	  
  }
  
  </script>
   <body onLoad="noBack();"
   onpageshow="if(event.persisted) onBack();" onUnload="">

<table bgcolor="#ffffcc"><tr><td><a href="AdminHome.jsp">
<img src="images/icon..png" alr="icon" style="width:50px;height:60px;"></td></a>
<td><h1>Railway Reservation System</h1></td><td></td>
<td><% if(session.getAttribute("userid").equals("shreyas"))
	
out.println("<a style='color:green' href='AdminHome.jsp'><b>Back</b></a>");
else 	out.println("<a href='userlogin.jsp'>Back</a>");
%>
 </td>
<td></td>
<td> <div class="topright">
<h2>
<%=session.getAttribute("userid") %>
<a style="color:blue" href ="logout.jsp">log out</h2></a>
</div>

</tr>

</table>


<form id="regForm" action="addtrain1.jsp">
  <h1>Train Registration:</h1>
  <!-- One "tab" for each step in the form: -->
  <div class="tab"><h2>Train basic information:</h2>
    <p><input placeholder="Train Number" oninput="this.className = ''" name="tno"></p>
    <p><input placeholder="Train Name" oninput="this.className = ''" name="tname"></p>
    <p><input placeholder="Arrival Time" oninput="this.className = ''" name="atime"></p>
    <p><input placeholder="Departure Time" oninput="this.className = ''" name="dtime"></p>
    <p><input placeholder="Source" oninput="this.className = ''" name="source"></p>
    <p><input placeholder="Destination" oninput="this.className = ''" name="destination"></p>
    <p><input placeholder="Distance" oninput="this.className = ''" name="dist"></p><br>
    Days: <br><br>
      
    

   <p> <input type="checkbox" name="day1" value="Sunday">sunday</p>
    <p><input type="checkbox" name="day2" value="Monday">monday </p>
    <p><input type="checkbox" name="day3" value="Tuesday">tuesday </p>
    <p><input type="checkbox" name="day4" value="Wednesday">wednesday</p>
    <p><input type="checkbox" name="day5" value="Thursday">thursday </p>
    <p><input type="checkbox" name="day6" value="Friday">friday </p>
    <p><input type="checkbox" name="day7" value="Saturday">saturday </p>
    
    
    
   
   
   
        
  </div>
  <div class="tab">Availability of Seats:
    <p><input placeholder="Sleeper" oninput="this.className = ''" name="sleeper" type="number"></p>
    <p><input placeholder="Economic" oninput="this.className = ''" name="economic" type="number"></p>
    <p><input placeholder="Ac 1" oninput="this.className = ''" name="ac1" type="number"></p>
    <p><input placeholder="Ac 2" oninput="this.className = ''" name="ac2" type="number"></p>
	<p><input placeholder="Ac 3" oninput="this.className = ''" name="ac3" type="number"></p>  
  </div>
  <div class="tab">Fare:
    <p><input placeholder="Ac1 fare in Rs." oninput="this.className = ''" name="ac1f" type="number"></p>
    <p><input placeholder="Ac2 fare in Rs." oninput="this.className = ''" name="ac2f" type="number"></p>
    <p><input placeholder="Ac3 fare in Rs." oninput="this.className = ''" name="ac3f" type="number"></p>
    <p><input placeholder="Economic fare in Rs." oninput="this.className = ''" name="ecof" type="number"></p>
    <p><input placeholder="Sleeper fare in Rs." oninput="this.className = ''" name="sleeperf" type="number"></p>
  </div>
  <div style="overflow:auto;">
    <div style="float:right;">
      <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
      <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
    </div>
  </div>
  <!-- Circles which indicates the steps of the form: -->
  <div style="text-align:center;margin-top:40px;">
    <span class="step"></span>
    <span class="step"></span>
    <span class="step"></span>
  
  </div>
</form>

<script>
var currentTab = 0; // Current tab is set to be the first tab (0)
showTab(currentTab); // Display the current tab

function showTab(n) {
  // This function will display the specified tab of the form...
  var x = document.getElementsByClassName("tab");
  x[n].style.display = "block";
  //... and fix the Previous/Next buttons:
  if (n == 0) {
    document.getElementById("prevBtn").style.display = "none";
  } else {
    document.getElementById("prevBtn").style.display = "inline";
  }
  if (n == (x.length - 1)) {
    document.getElementById("nextBtn").innerHTML = "Submit";
  } else {
    document.getElementById("nextBtn").innerHTML = "Next";
  }
  //... and run a function that will display the correct step indicator:
  fixStepIndicator(n)
}

function nextPrev(n) {
  // This function will figure out which tab to display
  var x = document.getElementsByClassName("tab");
  // Exit the function if any field in the current tab is invalid:
  if (n == 1 && !validateForm()) return false;
  // Hide the current tab:
  x[currentTab].style.display = "none";
  // Increase or decrease the current tab by 1:
  currentTab = currentTab + n;
  // if you have reached the end of the form...
  if (currentTab >= x.length) {
    // ... the form gets submitted:
    document.getElementById("regForm").submit();
    return false;
  }
  // Otherwise, display the correct tab:
  showTab(currentTab);
}

function validateForm() {
  // This function deals with validation of the form fields
  var x, y, i, valid = true;
  x = document.getElementsByClassName("tab");
  y = x[currentTab].getElementsByTagName("input");
  // A loop that checks every input field in the current tab:
  for (i = 0; i < y.length; i++) {
    // If a field is empty...
    if (y[i].value == "") {
      // add an "invalid" class to the field:
      y[i].className += " invalid";
      // and set the current valid status to false
      valid = false;
    }
  }
  // If the valid status is true, mark the step as finished and valid:
  if (valid) {
    document.getElementsByClassName("step")[currentTab].className += " finish";
  }
  return valid; // return the valid status
}

function fixStepIndicator(n) {
  // This function removes the "active" class of all steps...
  var i, x = document.getElementsByClassName("step");
  for (i = 0; i < x.length; i++) {
    x[i].className = x[i].className.replace(" active", "");
  }
  //... and adds the "active" class on the current step:
  x[n].className += " active";
}
</script>
 
  
  <% } else response.sendRedirect("userlogin.jsp"); } %>
</body>
</html>