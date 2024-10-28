<cfsilent>
	
    <cfscript>

        //try {

        param name="url.pageNo" type="numeric" default="1";
        param name="url.pageNoPrevious" type="numeric" default="0";

        maxRows = url.maxRows;
        pageNo = url.pageNo;
        
        //Set the collection to use.

        collectionName = "dashboard";
        collectionCategory = "pages";
        collectionResultInclude = "result.cfm";

        switch(collectionName) {

            default:

            objDashboard = CreateObject("component", application.mcmsComponentPath & '/apps/pageportal/PagePortal');
            objSearch = CreateObject("component", application.mcmsComponentPath & '/mcms/search/Search');

            //Filter page ID's by state/prov by creating list.
            this.ppIDList = objDashboard.setPagePortal(siteNo=request.siteNo);

            //Example query: custom3:test OR custom2:test AND uid:(136 OR 133). This filters out state/prov rels.

            //Change delimiter.
            this.ppIDList = ListChangeDelims(this.ppIDList, ' OR ', ',');

            //Check index.
            objSearch.checkIndex(collectionName);

            cfsearch(name="result", collection="#collectionName#", category="#collectionCategory#", criteria="custom3:#url.q# OR custom2:#url.q# AND uid:(#this.ppIDList#)", contextHighlightBegin="<span id='smwHighlight'>&quot;", contextHighlightEnd="&quot;</span>", ContextPassages="3", ContextBytes="2048", status="info", suggestions="5");
        
        }

        //Check that the result returned is a query struct.
        if(isQuery(result)) {
        
            rc = result.recordcount;	
            startRow = Min((pageNo-1) * maxRows+1, Max(rc,1));
            endRow = Min(startRow + maxRows-1, rc);
            totalPages = Ceiling(rc/maxRows);
            queryString = 'q=#url.q#';	
            maxCount = 4;
            increment = 10;

        }

    /*} catch(any e) {

        result = '';
        WriteLog(type="Error", file="mcmsSearchError", text="[#e.type#] #e.message# - Details: #e.detail#");

    }*/
	
    </cfscript>

</cfsilent>

<div id="mcmsMainContainer">

<cfif NOT isQuery(result)>

    <div class="row">

        <div class="col-md-12">

            <cfoutput>#application.searchMessage#</cfoutput>

            <div class="alert alert-warning text-center">There are no results for your search.</div>

        </div>

    </div>

<cfelse>

    <div class="row">

        <div id="col-md-12">

            <cfif url.q EQ 'All' OR url.q EQ ''>

                <h1>Search Knowledgebase</h1>

            <cfelse>
                
                <cfoutput><label>Search results for: </label> "<u><strong>#url.q#</strong></u>"</cfoutput>

                <br/>
                <br/>

                <cfif isDefined('info.SuggestedQuery') AND info.SuggestedQuery NEQ '' AND info.found LTE 5>

                    <cfoutput>

                        Did you mean: <a href="?q=#info.SuggestedQuery#">#info.SuggestedQuery#</a>

                    </cfoutput>

                </cfif>

            </cfif>

            <!---<cfinclude template="inc_pagination.cfm">--->

        </div>

            <cfif rc EQ 0>

                <div class="alert alert-warning text-center">There are no results for your search.</div>

            <cfelse>
                
                <cfinclude template="#collectionResultInclude#">

            </cfif>

    </div>

</cfif>

</div>