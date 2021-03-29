<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Overseer | Log In</title>
	<link rel="stylesheet" href="src/css/style.css">
	<script src="./src/js/formValidator.js"></script>
</head>
<body class="login--page">

	<h1>Log In</h1>

	<div class="container">
		<form action="return false">
			<label for="email" class="email">E-Mail
				<input type="text" placeholder="E-Mail">
				<p class="smalltext" style="display:none;">smalltext</p>
			</label>
			<label for="password" class="passwprd">Password
				<input type="password" placeholder="Password">
				<p class="smalltext" style="display:none;">smalltext</p>
			</label>
			<label class="checktainer">Stay signed in
				<input type="checkbox" id="frm__Newsletter" />
				<span class="checkmark"></span>
			</label>

			<button>Log In</button>
		</form>
	</div>
	
</body>
</html>