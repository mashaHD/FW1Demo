<!-- Header -->
<section id="header">
	<header class="major">
		<cfif structKeyExists(rc,"country")>
			<cfoutput><h1>#rc.country#</h1></cfoutput>
		<cfelse>
			<cfoutput><h1>#rc.month#</h1></cfoutput>
		</cfif>
	</header>
	<div class="container">
		<ul class="actions">
			<li><a href="#one" class="button special scrolly">Begin</a></li>
		</ul>
	</div>
</section>

<cfoutput>#body#</cfoutput>