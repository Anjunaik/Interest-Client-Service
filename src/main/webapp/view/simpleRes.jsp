<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SimpleResult</title>
<link rel="stylesheet" href="anji3.css">
</head>
<body >
<jsp:include page="simpleReq.jsp"/>


	<div id="div1" class="center" >
		<div class="label">
			<h5>User Entered Details</h5>
			<table>
				<tr>
					<td>From Date :</td>
					<td>${simpleReqPojo.startDate}</td>
				</tr>

				<tr>
					<td>To Date :</td>
					<td>${simpleReqPojo.endsDate}</td>
				</tr>

				<tr>
					<td>Amount :</td>
					<td>${simpleReqPojo.principal}</td>
				</tr>

				<tr>
					<td>Interest Rate :</td>
					<td>${simpleReqPojo.interestRate}%</td>
				</tr>

				<tr>
					<td>Rate Type :</td>
					<td>${simpleReqPojo.ratetype}</td>
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
	<h5> Simple Interest Formulas</h5>
<p>Simple interest is calculated with the following formula: S.I. = (P × R × T)/100, where P = Principal, R = Rate of Interest in % per annum, and T = Time, 
	usually calculated as the number of years. 
	The rate of interest is in percentage R% (and is to be written as R/100, thus 100 in the formula).</p>

</body>
</html>