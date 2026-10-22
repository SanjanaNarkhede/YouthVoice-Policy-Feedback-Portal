function submitFeedbackForm() {
  document.getElementById("submitFeedbackForm").style.display = "block";
  //document.getElementById("ComplaintsContent").innerHTML = "";
  //document.getElementById("CustomerProfile").innerHTML = "";
}

function showPolicyTable() 
{
    document.getElementById("PolicyContent").innerHTML = "Loading...";
    fetch("C4_Customer_View_Complaint_Status.jsp")
      .then(response => response.text())
      .then(data => {
		document.getElementById("ComplaintsContent").innerHTML = data;
        document.getElementById("submitComplaintForm").style.display = "none";
		document.getElementById("CustomerProfile").innerHTML = "";
      });
 }
 
 function showYouthProfile() 
 {
     document.getElementById("youthProfile").innerHTML = "Loading...";
     fetch("C6_Customer_Profile.jsp")
       .then(response => response.text())
       .then(data => {
 		document.getElementById("youthProfile").innerHTML = data;
         document.getElementById("submitFeedbackForm").style.display = "none";
		 document.getElementById("PolicyContent").innerHTML = "";

       });
  }