<!-- Navigation -->
<section id="nav">
	<div class="navigation">
		<a href="/"><i class="fa fa-home" aria-hidden="true"></i></a>	
		<cfloop index="x" from="1" to="12">
		   <cfoutput><a href="http://fwsite1.loc/index.cfm/months?month=#monthAsString(x)#">#monthAsString(x)#</a></cfoutput>
		</cfloop>
	</div>
</section>