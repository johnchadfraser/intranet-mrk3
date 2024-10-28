<cfscript>

    //Set obj.
    objLink = CreateObject("component", application.mcmsComponentPath & '/utils/link/Link');

    //Get any links associated to this site and department.
    getLinkSiteDepartmentRelRet = objLink.getLinkSiteDepartmentRel(ltID=1, siteNo="100,101", deptNo="0,#request.deptNo#", netID=application.mcmsNetworkID, lStatus=1);

</cfscript>

<div class="row">

    <!---Loop through any links by site and department.--->
    <cfoutput query="getLinkSiteDepartmentRelRet" group="lName">

        <div class="col-md-2">

        <div class="well text-center">

            <a href="#lURL#" target="#lTarget#">
                <img src="/#APPLICATION.mcmsRepositoryDir#/image/#imgtPath#/#imgFile#" class="well-img" width="#imgtWidth#" alt="#lName#" name="#lName#" />
                <div class="well-text">#lName#</div>
            </a>

        </div>

    </div>

    </cfoutput>

</div>