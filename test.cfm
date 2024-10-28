<html>

    <head>
        <title>Test</title>
        <cfoutput>

            <link rel="stylesheet" type="text/css" href="#application.mcmsPath#/#application.mcmsCSS#/mcms.css" />
            <link rel="stylesheet" type="text/css" href="#application.mcmsJSPackagePath#/bootstrap/css/bootstrap.min.css" />

        </cfoutput>
        
    </head>
    
    <body>

<cfscript>

    objDashboard = CreateObject("component", application.mcmsComponentPath & '/apps/pageportal/PagePortal');

    getDashboardRet = objDashboard.setPagePortalMenu(ppParentType=99, ppStatus=1);

    //getDashboardRet = objDashboard.getPagePortalDepartmentRel();
/*

    
    WriteDump(getDashboardRet);

    WriteOutput('<br/><br/>');
    WriteOutput('Site No: ' & iif(request.remotePCSiteIP EQ 0, DE(url.siteNo), DE(request.remotePCSiteIP)) & '<br/>');
    WriteOutput('Dept No: ' & iif(request.remotePCDeptNo EQ 0, DE(url.deptNo), DE(request.remotePCDeptNo)) & '<br/>');
*/

    WriteOutput("Request SiteNo: " & request.siteNo & "<br/>");
    WriteOutput("Request DeptNo: " & request.deptNo & "<br/>");

    objLink = CreateObject("component", application.mcmsComponentPath & '/utils/link/Link');

    getLinkRet = objLink.getLinkSiteDepartmentRel(ltID=2, deptNo=22, netID=application.mcmsNetworkID, lStatus=1);
                    
    WriteDump(getLinkRet);

    /*

    cfhttp(method="GET", url="https://intranet-mrk3.mcms.com/lib/neo-runtime.xml", result="xml", charset="utf-8") {
    }
    */

    //Test query.
    //objResult = CreateObject("component", application.mcmsComponentPath & '/report/quick/QuickReport');

    //WriteOutput(expandPath('/MCMS'));

    //Set a report in excel.
    //WriteOutput(objResult.getQuickReportFunction(reportType="excel", reportCFC="/mcms/site/Site", reportMethod="getSiteHour", args={reportQuery=true}));

    //objResult = CreateObject("component", application.mcmsComponentPath & '/interface/stock/Stock');

    //WriteOutput(objResult.getStockSocket());

    //objAlert = CreateObject("component", application.mcmsComponentPath & '/mcms/alert/Alert');

    //WriteOutput(objAlert.getAlertSocket());

    //WriteDump(objAlert.getAlert());

    //WriteOutput(getDirectoryFromPath(getCurrentTemplatePath()));

    //cacheRegionRemove('ALERT');

    //WriteDump(CGI.REMOTE_ADDR);

    //objNetwork = CreateObject("component", application.mcmsComponentPath & '/utils/network/Network');

    //result = objNetwork.setIPAddressPadding();

    //WriteDump(result);

    //objDatabase = CreateObject("component", application.mcmsComponentPath & '/utils/database/Database');

    //result = objDatabase.getMaxValueSQL('tbl_document');

    //WriteDump(result);

    //result = objDatabase.getNextValueSQL(sequenceOwner='swweb', sequenceName='sq_alert');

    //WriteDump(result);

   // objReport = CreateObject("component", application.mcmsComponentPath & '/report/Report');

    //Pass args to function for parmaters.
    //args = {};
    //args.doctID=41;
    //args.aStatus=1;
    //args.reportQuery=true;

    //result = objReport.getReportFunction(reportName="document", reportFormat="excel", reportComponentPath="/mcms/document/Document", reportFunction="getDocument", args=args);

    //WriteDump(result);

    //WriteOutput(GetTempDirectory());

    //WriteOutput(ExpamdPath('/reporsitory'));

    //objAlertCRUD = CreateObject("component", application.mcmsComponentPath & '/mcms/alert/AlertCRUD');

    //updateAlertRet = objAlertCRUD.updateAlert(ID=138, siteNo=100, aName="Test New CRUDed", aDescription="Test update", aDateRel='03/30/2020', aDateRel='04/05/2020', atID=2, aStatus=1);

    //WriteDump(updateAlertRet);


</cfscript>


<!---

<cfparam name="form.imgCountID" default="1">

    <cfif IsDefined('form.mcmsInsert')>

        <!---Global value.--->
        <cfset maxFileSize = 1>

        <!---Max size in MB devided by number of images being uploaded--->
        <cfset fileMaxSize = maxFileSize*1000/form.imgCountID> 

        Max Size: <cfdump var="#fileMaxSize#">
        <br/>

        <cfset fileSize = NumberFormat(Val(cgi.CONTENT_LENGTH/1000), '_________')>

        File Size: <cfdump var="#fileSize#">
        <br/>

        Value: <cfdump var="#NumberFormat(Val(cgi.CONTENT_LENGTH/1000), '_________')#kb">

        <br/>

        <cfif fileSize GT fileMaxSize>File too large.</cfif>

    </cfif>

    <form name="insert" id="insert" action="test.cfm" method="post" enctype="multipart/form-data">

        <input type="file" name="imgFile" id="imgFile">

        <input type="text" name="imgCountID" id="imgCountID" value="1">

        <input type="submit" name="mcmsInsert" id="mcmsInsert" value="Insert Image"/>

    </form>

    --->

    </body>

</html>


