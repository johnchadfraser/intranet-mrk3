<!---Result set for page portal (Dashboard).--->

<cfoutput query="result" startrow="#startRow#" maxrows="#endRow#">

    <cfset this.title = summary>

    <!---Remove image tags from content.--->
    <cfset this.content = objSearch.stripImages(custom2)>

    <!---Have context rturn highlighted keywords..--->
    <cfif context NEQ "">

        <cfset this.context = context>

    <cfelse>

        <cfset this.context = summary>

    </cfif>

    <!---Add highlighted keywords in content.--->
    <cfif url.q NEQ "All" AND url.q NEQ "">

        <cfset this.content = reReplaceNoCase(this.content, "\b(#url.q#)\b", "<span id='smwHighlight'>&quot;#url.q#&quot;</span>", "all" )>
    
    </cfif>
    
    <cfif LEN(this.content) GT 512>

        <cfset this.content = LEFT(this.content, 512) & '...'>

    </cfif>

    <!---Format the date.--->
    <cfset this.dateupdate = DateFormat(custom4, APPLICATION.dateformat)>

    <!---Title.--->
    <h3>
        <cfif custom1 EQ 0>

            <a href="/?ppdID=#key#&ppID=0" title="#this.title#">#this.context#</a><br/>

        <cfelse>

            <a href="/?ppdID=#custom1#&ppID=#key#" title="#this.title#">#this.context#</a><br/>

        </cfif>
    </h3>

    <hr/>

    <!---Add pill buttons for date identifing.--->
    <cfif this.dateupdate GTE DateAdd('d', -30, Now())>

        <span class="badge badge-pill badge-info">Updated</span>
        #this.dateupdate#

    <cfelse>

        Created: #this.dateupdate#

    </cfif>

    <br/><br/>
    <!---Content.--->

    <p>

        #this.content#
        
    </p>

    <br/>

    <!---Link to additional content.--->

    <cfif custom1 EQ 0>

        <a class="btn btn-primary" role="button" href="/?ppdID=#key#&ppID=0" title="#this.title#">> More</a><br/>

    <cfelse>

        <a class="btn btn-primary" role="button" href="/?ppdID=#custom1#&ppID=#key#" title="#this.title#">> More</a><br/>

    </cfif>

</cfoutput>