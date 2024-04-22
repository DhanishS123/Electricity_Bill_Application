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

        .form {
            max-width: 400px;
            margin: auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="number"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        select {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        #butt {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        #butt:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
	<form class="form" action="ConsumerServlet">
		<h1>Enter Consumer Details </h1>
		<label>Consumer No.</label><br> <input type="text"
			id="consumerNo" name="consumerNo" required><br>
		<br> <label>Consumer Name</label><br> <input type="text"
			id="consumerName" name="consumerName" required><br>
		<br> <label>Current Month Reading</label><br> <input
			type="text" id="cmReading" name="currentMonthReading" required><br>
		<br> <label>Previous Month Reading</label><br> 
		<input type="text" id="pmReading" name="previousMonthReading" required><br><br>
			<select name="consumerType" id="consumerType" required>
			<option value="Domestic">Domestic</option>
			<option value="Commercial">Commercial</option>
		</select> <br>
		<br><button type="submit" id="butt" value="submit">Submit</button>

	</form>
</body>
</html>