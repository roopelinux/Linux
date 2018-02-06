<!DOCTYPE html>

<html>

	<head>
		<title>Vuosikalkulaattori</title>
		<meta charset="UTF-8">
	</head>

	<body>
		<h3>Find out how many days in a certain amount of years</h3>

		<form method="POST" action="vuosihomma.php">How many days in <input type="text" name="years"> years? <input type="submit">
		</form>

		<?php
			$years = $_POST["years"];
			$days = $years*365;

			echo "$days days.";

		?>

	</body>
</html>
