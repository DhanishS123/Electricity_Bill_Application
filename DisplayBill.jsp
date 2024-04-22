<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
  body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 20px;
        }

/* Styling the anchor tag to look like a button */
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-align: center;
            text-decoration: none;
            font-size: 16px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
        }

        /* Hover effect */
        .button:hover {
            background-color: #45a049;
        }
        
         h1 {
            color: #333; /* Text color */
   			text-align:center;
            font-size: 2em; /* Font size */
            margin-bottom: 20px; /* Bottom margin */
        }
          table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
             border: 1px solid #ddd;
        }

        /* Style for table headers */
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        /* Style for alternating row colors */
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }



</style>
</head>
<body>
	<%
	int number = (Integer) (session.getAttribute("Number"));
	String name = (String) session.getAttribute("name");
	double cmReading = (Double) session.getAttribute("cm");
	double pmReading = (Double) session.getAttribute("pm");
	String consumerType = (String) session.getAttribute("consumertype");
	double bill = (Double) session.getAttribute("bill");
	%>


	
	<h1>ELECTRICITY BILL</h1>
		<table >
			<tr>
				<th >Name</th>
				<th >Consumer No.</th>
				<th >Current Month Reading</th>
				<th >Previous Month Reading</th>
				<th >Amount</th>
			</tr>

			<tr>
				<td >
					<%
					out.println(name);
					%>
				</td>
				<td >
					<%
					out.println(number);
					%>
				</td>
				<td>
					<%
					out.println(cmReading);
					%>
				</td>
				<td >
					<%
					out.println(pmReading);
					%>
				</td>
				<td>
					<%
					out.println(bill);
					%>
				</td>

			</tr>
		</table>
	<a class="button" href="consumer.jsp">Calculate Bill</a>


</body>
</html>