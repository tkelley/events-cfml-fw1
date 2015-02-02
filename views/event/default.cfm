<h1>Event Listing</h1>

<cfoutput>
	<ul>
		<cfloop array="#rc.events#" index="local.event">
			<cfset rc.id = local.event.id>
			<li><a href="#buildCustomURL("/event/:id")#">#local.event.title#</li>	
		</cfloop>
	</ul>
</cfoutput>