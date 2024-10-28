<cfscript>

    param name="url.ppID" default="0";
    param name="url.ppdID" default="0";

    objDashboard = CreateObject("component", application.mcmsComponentPath & '/apps/pageportal/PagePortal');
    objPrint = CreateObject("component", application.mcmsComponentPath & '/utils/print/Print');

    //Print the page if it is called.
    if(url.mcmsPrint != false) {


        //objPrint.setPrint(type="PDF");


    }

</cfscript>

<div class="row">

    <cfif url.ppID EQ 0 AND url.ppdID EQ 0>

        <cfscript>

            //Get queries.
            getDashboardRet = objDashboard.setPagePortalMenu(ppParentType=2, ppStatus=1, orderBy='deptNo, ppTitle');

        </cfscript>

        <div class="col-md-12">

            <h2 class="mcmsPrimaryColor">Where would you like to go?</h2>

            <!---Set tab navigation.--->
            <ul class="nav nav-tabs">

                <cfloop query="getDashboardRet">

                    <li class="nav-item">

                        <cfoutput>
                            <a href="?mcmsPageID=#ppID#" class="nav-link #iif(ppID EQ url.mcmsPageID, DE('active'), DE(''))#">#deptName#</a><br/>
                        </cfoutput>

                    </li>

                </cfloop>

            </ul>

            <cfif url.mcmsPageID NEQ ''>

                <cfscript>

                    //Set access to page based on site & department.
                    setPagePortalPageRet = objDashboard.setPagePortalPage(ppdID=url.mcmsPageID, siteNo=request.siteNo, deptNo=request.deptNo, ppStatus=1);

                </cfscript>

                <div class="row">

                    <cfoutput query="setPagePortalPageRet">

                        <div class="col-md-2">
        
                            <div class="well">

                                <a href="?ppdID=#url.ppdID#&ppID=#ID#">
                                    <img src="#application.mcmsAppCustomPath#/assets/policy_icon.png" class="well-img" alt="#ppTitle#" name="#ppTitle#" />
                                    <div class="well-text">#ppTitle#</div>
                                </a>

                            </div>
        
                        </div>

                    </cfoutput>

                </div>

            </cfif>

        </div>

    <cfelse>

        <cfscript>

            //Set access to page based on site & department.
            setPagePortalPageRet = objDashboard.setPagePortalPage(ppID=url.ppID, ppdID=url.ppdID, siteNo=request.siteNo, deptNo=request.deptNo, ppStatus=1);

        </cfscript>

        <cfif url.ppID EQ 0>

            <cfoutput query="setPagePortalPageRet">

                <div class="col-md-2">

                        <div class="well">

                            <a href="?ppdID=#url.ppdID#&ppID=#ID#&mcmsPageID=#ppDashboardTitle#">
                                <img src="#application.mcmsAppCustomPath#/assets/policy_icon.png" class="well-img" alt="#ppTitle#" name="#ppTitle#" />
                                <div class="well-text">#ppTitle#</div>
                            </a>

                        </div>

                </div>
            
            </cfoutput>

        <cfelse>

            <cfoutput query="setPagePortalPageRet">

                <div class="col-md-9">

                    <!---BEGIN Print to PDF.--->

                    <cfif url.mcmsPrint NEQ false>

                        <cfdocument format="pdf" unit="in" margintop="1" marginright=".25" marginbottom=".75" marginleft=".25" orientation="portrait" pagetype="letter">

                            <link href="http://#CGI.SERVER_NAME##application.mcmsAppCustomPath#/#application.mcmsCSS#/print.css" rel="stylesheet" type="text/css">

                            <body>

                                <cfdocumentitem type="header">

                                    <link href="http://#CGI.SERVER_NAME##application.mcmsAppCustomPath#/#application.mcmsCSS#/print.css" rel="stylesheet" type="text/css">

                                    <div class="header">

                                        <img class="logo" src="#application.mcmsHostURL#/MCMS/assets/logo/logo.png">

                                        <hr/>

                                    </div>

                                </cfdocumentitem>

                                <h1 class="mcmsPrimaryColor">#ppTitle#</h1>

                                <p>#ppContent#</p>

                                <cfdocumentitem type="footer">

                                    <link href="http://#CGI.SERVER_NAME##application.mcmsAppCustomPath#/#application.mcmsCSS#/print.css" rel="stylesheet" type="text/css">

                                    <div class="footer">

                                        <hr/>
                                        
                                        <p>#application.companyName# | Page #cfdocument.currentpagenumber# of #cfdocument.totalpagecount# | #DateFormat(Now(), application.dateFormat)#</p>

                                    </div>
                                
                                </cfdocumentitem>
                            
                            </body>

                        </cfdocument>

                    <cfelse>

                        <h2 class="mcmsPrimaryColor">#ppTitle#</h2>

                        <a href="?mcmsPageID=#ppDashboardID#">Return to #ppDashboardTitle#</a> | <a href="?ppdID=0&ppID=#ID#&mcmsPrint=PDF" target="blank"><span class="print_icon"></span>Print</a> | <a href="#application.mcmsEmailFormPath#/?&subject=#ppTitle#&url=#URLEncodedFormat('?ppdID=0&ppID=#ID#')#"><span class="email_icon"></span>Email</a> <br/>

                        <p>#ppContent#</p>

                    </cfif>

                    <!---END Print to PDF.--->

                </div>

            </cfoutput>

            <div class="col-md-3">

                <!---Get associated pages.--->
                <cfscript>

                    setPagePortalPageMenuListRet = objDashboard.setPagePortalPage(ppdID=setPagePortalPageRet.ppDashboardID, siteNo=request.siteNo, deptNo=request.deptNo, ppStatus=1);

                </cfscript>

                <h3><cfoutput>#setPagePortalPageRet.ppDashboardTitle#</cfoutput></h3>

                <cfoutput query="setPagePortalPageMenuListRet">

                    - <a href="?ppdID=0&ppID=#setPagePortalPageMenuListRet.ID#">#setPagePortalPageMenuListRet.ppTitle#</a><br/>

                </cfoutput>

            </div>

        </cfif>

    </cfif>

</div>