<cfif CGI.QUERY_STRING EQ ''>

    <div id="mcmsHero" class="jumbotron">

        <h1><cfoutput>#application.companyName#</cfoutput></h1>
        <p class="lead">Employee Intranet</p>

    </div>

<cfelseif url.mcmsPageID EQ "Human Resources">

    <div id="mcmsHeroHumanResources" class="jumbotron">

        <h1>Human Resources</h1>
        <p class="lead">Human Resources</p>

    </div>

</cfif>