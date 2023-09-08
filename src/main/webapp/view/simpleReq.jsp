<%@ page language="java" session ="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@  taglib uri="http://www.springframework.org/tags/form"  prefix="form"%>    
    
<!DOCTYPE html>
<html>
<head>
   <title>SimpleInterest</title>
   <link rel="stylesheet" href="anji2.css">
   
   
   <script>  
function validateform(){  
	var principal=document.myform.principal.value;  
	var interestRate=document.myform.interestRate.value;   
  
if (!myform.startDate.value){  
  alert("From date  can't be blank");  
  return false;  
}else if(!myform.endsDate.value){  
  alert("To date can't be blank");  
  return false;  
  } 

else if(principal==null||principal=="")
	{
	alert("Principal  can't be blank");  
	  return false;  
	}
	
else if(interestRate==null||interestRate=="")
	{
	alert("Rate  of interest can't be blank");  
	  return false;  
	}
}  
</script>  
<body>  
 </head>
<body>
 
<form:form action="/simpleRes" method="Post" 
 modelAttribute="simpleReqPojo" name="myform" 
onsubmit="return validateform()">
<div class="div1" id="center">
<font size="1"
          face="verdana"
          color="red">
          ${error}
    </font>
    <h4>SIMPLE INTEREST</h4>
<table>

<tr>
<td class="label">Enter From Date: </td>
<td><form:input class="input1" type="Date" path="startDate"/> </td>
</tr>


<tr>
<td class="label">Enter To Date: </td>
<td><form:input class="input1" type="Date" path="endsDate"/> </td>
</tr>

<tr>
<td class="label">Enter Principal: </td>
<td><form:input class="input1" type="Double" path="principal"/> </td>
</tr>

<tr>
<td class="label">Enter Rate of Interest: </td>
<td><form:input class="input1" type="Double" path="interestRate"/> 
<form:select class="input2" path="ratetype">
<form:option value="yearly">Yearly</form:option>
<form:option value="monthly">Monthly</form:option>
</form:select>
</td>
</tr>
<tr>
<td><form:button  class="sub" type="reset">Reset</form:button> </td>
<td><form:button class="sub" type="submit">Submit</form:button></td>

</tr>

</table>
</div>
</form:form>
</body>
<br><br><br>
</html>