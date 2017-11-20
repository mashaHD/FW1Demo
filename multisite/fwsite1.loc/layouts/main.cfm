<!-- Navigation -->
<cfoutput>#view('layout/navigation')#</cfoutput>

<cfoutput>#body#</cfoutput>

<!-- Footer -->
<section id="footer">
	<cfoutput>#view('components/contact',{formTitle="Connect With Us"})#</cfoutput>