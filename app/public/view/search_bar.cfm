<div id="mcmsSearchBar">

    <form id="querySearch" action="<cfoutput>#application.mcmsAppPublicPath#</cfoutput>/search/">

        <button type="submit" class="btn btn-link">
            <span class="glyphicon glyphicon-search"></span>
        </button>

        <input id="q" name="q" type="text" size="32" value="<cfoutput>#url.q#</cfoutput>" autocapitalize="none" placeholder="Search Our Knowledgebase..">
        
    </form>

</div>