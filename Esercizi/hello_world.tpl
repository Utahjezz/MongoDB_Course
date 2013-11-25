<!DOCTYPE html>
<html>
<head>
	<title>
		Hello World!
	</title>
	<body>
		<p> Welcome {{username}}</p>
		<ul>
			%for thing in things:
				<li>{{thing}}</li>
			%end
		</ul>
		<form action='/favorite_fruit' method='post'>
			What is your favorite fruit?
		<input type="text" name="fruit" size="40" value=""><br>
		<input type="submit" value="Submit">
	</body>
</head>