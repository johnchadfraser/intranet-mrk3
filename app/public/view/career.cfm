<cfscript>

    //Set obj.
    objCareer = CreateObject("component", application.mcmsComponentPath & '/apps/career/Career');

    //Get careers by group. Corporate, store, or DC.
    objCareerCorporateRet = objCareer.getCareerJobListing(siteNo="101");
    objCareerStoreRet = objCareer.getCareerJobListing(siteNo="100", excludeSiteNo="101,98");
    objCareerDCRet = objCareer.getCareerJobListing(siteNo="98");

    totalJobCount = objCareerCorporateRet.recordcount+objCareerStoreRet.recordcount+objCareerDCRet.recordcount;

</cfscript>

<div class="row" id="mcmsHeroCareer">

    <div class="col-md-12">
        
        <h2>Now Hiring</h2>

        <p class="lead">
            <strong><cfoutput>#totalJobCount#</cfoutput></strong> Open Positions | Click on the categories below to learn more about the open positions.
        </p>

        <br/>

        <a class="btn btn-default btn-lg" role="button" href="/" title="">view <cfoutput>#objCareerCorporateRet.recordcount#</cfoutput> corporate jobs</a>
        <a class="btn btn-default btn-lg" role="button" href="/" title="">view <cfoutput>#objCareerStoreRet.recordcount#</cfoutput> store jobs</a>
        <a class="btn btn-default btn-lg" role="button" href="/" title="">view <cfoutput>#objCareerDCRet.recordcount#</cfoutput> d.c. jobs</a>

    </div>

</div>