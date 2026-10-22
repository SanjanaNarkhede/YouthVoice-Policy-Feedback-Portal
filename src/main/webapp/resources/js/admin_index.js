
function toggleSidebar() {
  document.getElementById('sidebar').classList.toggle('active');
  document.getElementById('overlay').classList.toggle('active');
}



//use Ajax to load data from other jsp file on dashboard


function showGovernmentOfficialsForm() {
  document.getElementById("AddGovernmentOfficialsForm").style.display = "block";
  
}



function showGovernmentOfficialsTable() {
  document.getElementById("GovernmentOfficialsContent").innerHTML = "Loading...";
  fetch("A4_Admin_View_ServiceMan.jsp")
    .then(response => response.text())
    .then(data => {
		document.getElementById("ComplaintsContent").innerHTML = "";
      	document.getElementById("serviceManContent").innerHTML = data;
    		document.getElementById("serviceManForm").style.display = "none";
    		document.getElementById("CustomersContent").style.display = "none";
		document.getElementById("AssignComplaints").innerHTML = "";
    });
}



function showCustomerTable() 
{
    document.getElementById("CustomersContent").innerHTML = "Loading...";
    fetch("A5_Admin_View_Customers.jsp")
      .then(response => response.text())
      .then(data => {
		document.getElementById("CustomersContent").innerHTML = data;
		document.getElementById("ComplaintsContent").innerHTML = "";
		document.getElementById("AssignComplaints").innerHTML = "";
        document.getElementById("serviceManContent").innerHTML = "";
        document.getElementById("serviceManForm").style.display = "none";
      });
 }

 function updateServiceMan() {
     document.getElementById("serviceManEditForm").innerHTML = "Loading...";
     fetch("A5_Admin_View_Customers.jsp")
       .then(response => response.text())
       .then(data => {
		document.getElementById("serviceManEditForm").innerHTM = data;
        document.getElementById("CustomersContent").innerHTML = "";
        document.getElementById("serviceManContent").innerHTML = "";
        document.getElementById("serviceManForm").style.display = "none";
		document.getElementById("ComplaintsContent").innerHTML = "";
		document.getElementById("AssignComplaints").innerHTML = "";
       });
   }
  



function showComplaintsTable() 
{
    document.getElementById("ComplaintsContent").innerHTML = "Loading...";
    fetch("A9_Admin_View_Complaints.jsp")
      .then(response => response.text())
      .then(data => {
		document.getElementById("ComplaintsContent").innerHTML = data;
        document.getElementById("CustomersContent").innerHTML = "";
        document.getElementById("serviceManContent").innerHTML = "";
        document.getElementById("serviceManForm").style.display = "none";
	    document.getElementById("AssignComplaints").innerHTML = "";
      });
 }
 
 function assignComplaints() 
 {
     document.getElementById("AssignComplaints").innerHTML = "Loading...";
     fetch("A10_Admin_Assign_Complaint.jsp")
       .then(response => response.text())
       .then(data => {
		document.getElementById("AssignComplaints").innerHTML = data;
 		document.getElementById("ComplaintsContent").innerHTML = "";
        document.getElementById("CustomersContent").innerHTML = "";
        document.getElementById("serviceManContent").innerHTML = "";
        document.getElementById("serviceManForm").style.display = "none";
       });
  }

  function showAdminProfile() 
  {
      document.getElementById("AdminProfile").innerHTML = "Loading...";
      fetch("A11_Admin_Profile.jsp")
        .then(response => response.text())
        .then(data => {
  		document.getElementById("AdminProfile").innerHTML = data;
  		
        });
   }