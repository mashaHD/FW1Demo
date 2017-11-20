<html>
	<head>
		<title>FW/1 - Framework One</title>
		<base href="<cfoutput>#iif( CGI.HTTPS eq "on", de("https"), de("http") ) & "://" & CGI.HTTP_HOST & getDirectoryFromPath( CGI.SCRIPT_NAME )#</cfoutput>" />
		<link rel="stylesheet" type="text/css" href="assets/css/fw1.css" />
	</head>
	<body>
		<div class="wrap">
			<div class="page">
				<img src="css/fw1logo7.jpg"/>
				<cfoutput>#body#</cfoutput>
			</div>
			<div class="footer">
			FW1 Core Layout
			</div>
		</div>
	</body>
</html>
