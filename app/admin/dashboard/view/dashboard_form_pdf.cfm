<cfscript>

    param name="url.ID" default="0";
    
    getPagePortalFormResultRet = getPagePortalFormResult(ppfuID=url.ID);
    getPagePortalFormUserRet = getPagePortalFormUser(ID=url.ID, ppfuStatus=1);
    getPagePortalTemplateRet = getPagePortalTemplate(ID=getPagePortalFormUserRet.pptID, pptStatus=1);

</cfscript>

<cfdocument format="pdf" pagetype="letter" unit="in" marginbottom=".25" marginleft=".25" marginright=".25" margintop=".25" name="mydoc">

	<!---Contsruct the email content.--->
	<html>

        <!---TODO: Style form.--->
		<cfoutput>
			<link href="#application.mcmsHostURL#/css/styles.css" rel="stylesheet" type="text/css">
		</cfoutput>

		<body>

            <table>

                <tr>

                    <td colspan="2" align="center">
                        <cfoutput>
                            <img src="#application.mcmsHostURL#/assets/logo/logo.png" alt="#application.companyName#" name="logo" border="0" />
                        </cfoutput>
                    </td>

                </tr>

                <tr>

                    <td colspan="2"><h2><cfoutput>Page Portal Form No. #url.ID# - #rs.ppfuName#</cfoutput></h2></td>

                </tr>

                <tr>
                    <td>

                        <table>

                            <cfoutput query="getPagePortalFormUserRet">

                                <tr>

                                    <td><strong>Name:</strong></td>
                                    <td>#ppfuName#</td>

                                </tr>

                                <tr>

                                    <td><strong>Site:</strong></td>
                                    <td>#siteName#</td>

                                </tr>

                                <tr>

                                    <td><strong>Department:</strong></td>
                                    <td>#deptName#</td>

                                </tr>

                            </cfoutput>
                            
                            <cfoutput query="rs">

                                <tr>
                                    
                                    <td><strong>#ppfaName#</strong></td>
                                    <td>#ppfrValue#</td>
                                    
                                </tr>

                            </cfoutput>

                        </table>
                        
                    </td>
                    
                </tr>

            </table>

		</body>

	</html>

</cfdocument>

<!--- Either writing a file or displaying the file. --->
<cfif URL.mcmsID EQ "writeFile">

	<cfif getPagePortalTemplateRet.pptEncrypt EQ 1>

		<cfpdf action="protect" source="mydoc" destination="/#application.mcmsRepositoryDir#/form_data/#url.ID#.pdf" overwrite="yes" encrypt="RC4_128" newUserPassword="#getPagePortalTemplateRet.pptEncryptPassword#" permissions="All">

	<cfelse>

		<cfpdf action="write" source="mydoc" destination="/#application.mcmsRepositoryDir#/form_data/#url.ID#.pdf" overwrite="yes">

	</cfif>

<cfelse>

	<cfcontent type="application/pdf" reset="false" variable="#toBinary(mydoc)#">

</cfif>