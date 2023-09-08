<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CompoundResult</title>
<link rel="stylesheet" href="anji3.css">
</head>
<body >
<jsp:include page="compoundReq.jsp"></jsp:include>
	<div id="div1" class="center">
		<div class="label">
			<h5>User Entered Details</h5>
			<table>
				<tr>
					<td>From Date :</td>
					<td>${req.startDate}</td>
				</tr>

				<tr>
					<td>To Date :</td>
					<td>${req.endsDate}</td>
				</tr>

				<tr>
					<td>Amount :</td>
					<td>${req.principal}</td>
				</tr>

				<tr>
					<td>Interest Rate :</td>
					<td>${req.interestRate}%</td>
				</tr>

				<tr>
					<td>Rate Type :</td>
					<td>${req.ratetype}</td>
				</tr>
				
				<tr>
					<td>Compound Time Interval :</td>
					<td>${req.compoundInterval}</td>
				</tr>

			</table>

		</div>


		<div class="label">
			<h5>Calculated Details</h5>
			<table>
				<tr>
					<td>Years :</td>
					<td>${res.years}</td>
				</tr>

				<tr>
					<td>Months :</td>
					<td>${res.months}</td>
				</tr>

				<tr>
					<td>Days :</td>
					<td>${res.days}</td>
				</tr>
                
			<tr>
					<td>PerDays :</td>
					<td>${res.perDay}</td>
				</tr>
				<tr>
					<td>PerMonth :</td>
					<td>${res.perMonth}</td>
				</tr>
				<tr>
					<td>PerYear :</td>
					<td>${res.perYear}</td>
				</tr>
			
				<tr>
					<td>Interest Amount :</td>
					<td>${res.interestTotalAmount}</td>
				</tr>

				<tr>
					<td>Total Amount :</td>
					<td>${res.totalAmount}</td>
				</tr>

				
               
			</table>


			


		</div>
	</div>
	<h5> Interest Rate Yearly Formulas</h5>
	<p>The formula for compound interest is A=P(1+r<sub>/100</sub>)<sup>nt</sup>
, where A represents the final balance after the interest has been calculated for the time, t, in years, 
on a principal amount, P, at an annual interest rate, r. 
The number of times in the year that the interest is compounded is n.<br>

If Half-Yearly, <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 A=P(1+r<sub>/200</sub>)<sup>2t</sup>

<br>
If Quarterly,<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 A=P(1+r<sub>/400</sub>)<sup>4t</sup>
 
  <br>
   If Monthly,<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   A=P(1+r<sub>/100*12</sub>)<sup>12t</sup>

</p>

<h5>Interest Rate Monthly Formulas</h5>
	<p>The formula for compound interest is A=P(1+r*12<sub>/100</sub>)<sup>nt</sup>
, where A represents the final balance after the interest has been calculated for the time, t, in years, 
on a principal amount, P, at an annual interest rate, r. 
The number of times in the year that the interest is compounded is n.<br>
If Half-Yearly, <br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 A=P(1+r*12<sub>/200</sub>)<sup>2t</sup>

 <br>
 If Quarterly,<br>
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   A=P(1+r*12<sub>/400</sub>)<sup>4t</sup>
   <br>
   If Monthly,<br>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   A=P(1+r*12<sub>/100*12</sub>)<sup>12t</sup>
</p>
</body>
</html>