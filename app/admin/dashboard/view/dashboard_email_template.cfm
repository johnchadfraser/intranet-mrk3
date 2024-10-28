<cfscript>

    param name="arguments.ID" default=0;
    param name="arguments.to" default='x';

    var.siteNo = 100;
    var.deptNo = 0;

    //Set objs.
    objPagePortal = CreateObject("component", application.mcmsComponentPath & '/apps/pageportal/PagePortal');

    getPagePortalRet = objPagePortal.getPagePortal(ID=arguments.ID);

    getPagePortalSiteRelRet = objPagePortal.getPagePortalSiteRel(ppID=arguments.ID);

    if(getPagePortalSiteRelRet.recordcount != 0) {

        var.siteNo = ValueList(getPagePortalSiteRelRet.siteNo);

    }
    
    getPagePortalDepartmentRelRet = objPagePortal.getPagePortalDepartmentRel(ppID=arguments.ID);

    if(getPagePortalDepartmentRelRet.recordcount != 0) {

        var.deptNo = ValueList(getPagePortalDepartmentRelRet.deptNo);

    }

    getPagePortalApproverRet = objPagePortal.getPagePortalApprover(userEmail=arguments.to);

</cfscript>

<!---Body of email.--->
<cfoutput>
    
    <h1>#getPagePortalRet.ppTitle# - Dashboard Page - #getPagePortalRet.sName#</h1>

    <p>
        <strong>#LSDateFormat(Now())# - #LSTimeFormat(Now())#</strong><br/>
    </p>

    <p>
        <!---TODO: Fix URL link.--->
        <a href="#application.mcmsHostURL##application.mcmsAppAdminPath#">View this Dashboard Page.</a><br/>
    </p>

    <!---Review page.--->
    <cfif getPagePortalRet.ppStatus EQ 3>

        <h3>Review</h3>

        <table>

            <tr>

                <td>
                    A Dashboard page has been added/updated by #getPagePortalRet.userfName# #getPagePortalRet.userlName# and requires your attention.
                </td>

            </tr>

            <tr>

                <td>
                    <strong>Page Title</strong><br/>
                    #getPagePortalRet.ppTitle#
                </td>

            </tr>

            <tr>

                <td>
                    <strong>Date Exp.</strong><br/>
                    #DateFormat(getPagePortalRet.ppDateExp, application.dateFormat)#
                </td>

            </tr>

            <cfif getPagePortalSiteRelRet.recordcount NEQ 0>

                <tr>

                    <td>
                        <strong>Site(s)</strong><br/>

                        <cfloop query="getPagePortalSiteRelRet">

                            (#siteNo#) #siteName#<br />

                        </cfloop>
                    </td>

                </tr>

            </cfif>

            <cfif getPagePortalDepartmentRelRet.recordcount NEQ 0>

                <tr>

                    <td>
                        <strong>Department(s)</strong><br/>

                        <cfloop query="getPagePortalDepartmentRelRet">

                            (#deptNo#) #deptName#<br />

                        </cfloop>
                    </td>

                </tr>

            </cfif>

            <tr>

                <td>
                    <!---TODO: Complete approval button.--->
                    <br/><br/>
					<a href="#application.mcmsHostURL#">Preview for Approval</a>
				
                </td>

            </tr>

        </table>

    <!---Denied page.--->
    <cfelseif getPagePortalRet.ppStatus EQ 2>

        <h3>The Dashboard Page has been Denied/Inactivated.</h3>

        <table>

            <tr>

                <td>
                    <!---TODO: Email form.--->
                    Please contact <a href="#application.mcmsHostURL#">#getPagePortalRet.paUserEmail#</a> for more information regarding your approval 
                    status.
                </td>

            </tr>

        </table>

    <!---Approved page.--->
    <cfelseif getPagePortalRet.ppStatus EQ 1>

        <h3>The Dashboard Page has been Approved.</h3>

        <table>

            <tr>

                <td>
                    <!---TODO: Email form.--->
                    Please contact <a href="#application.mcmsHostURL#">#getPagePortalRet.paUserEmail#</a> for more information regarding your approval 
                    status.
                </td>

            </tr>

        </table>

    </cfif>

    <p>

        Date: <cfoutput>#DateFormat(Now(), application.dateFormat)# at #TimeFormat(Now(), 'h:mmtt')#

    </p>

</cfoutput>