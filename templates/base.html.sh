#!/usr/bin/env sh

cat << EOF
<!DOCTYPE html>

<html>
	<head>
		<meta charset="utf-8"/>
		<link rel="stylesheet" href="/static/style.css"/>

		<title>$2</title>

		<style>
			body {
				background-image: url("/static/images/$3");
				color: $4;
			}
		</style>
	</head>
	<body>
		<div class="w3-bar w3-black">
		</div>
		<div id="main" class="w3-container">
			$1
		</div>

		<hr/>

		<footer>
			<p>
				<a href="/">Home</a>
				<p>Donate:</p>
				<ul>
				<li> lol </li>
				</ul>
			</p>
		</footer>
	</body>
</html>
EOF
