<cfscript>

    //Create navigation for dev environment.
    devNavigation = DirectoryList(expandPath("./view/"), false, "query");

    //Create and clean up the list.
    nameList = Replace(Replace(ValueList(devNavigation.name), '.cfm', '', 'All'), 'index', '', 'All');

    //Propercase the name.
    nameList = REReplaceNoCase(nameList, "\b(\w)(\w{0,})\b", "\U\1\L\2", "All");

</cfscript>

<div class="row">

    <div class="col-md-12">

        <h1>MCMS Framework</h1>
        <h3>Version: <cfoutput>#application.mcmsVersionPrefix# #application.mcmsVersionFull#</cfoutput></h3>
        <h2>Developer Portal</h2>

        <!---Set tab navigation.--->
        <ul class="nav nav-tabs">

            <li class="nav-item">
            <a class="nav-link" href="/dev/">Home</a>
            </li>

            <cfloop index="name" list="#nameList#">

                <li class="nav-item">

                    <cfoutput>
                        <a href="?mcmsPageID=#name#" class="nav-link">#name#</a><br/>
                    </cfoutput>

                </li>

            </cfloop>

        </ul>

    </div>

</div>

<!---Set active page.--->
<cfif url.mcmsPageID NEQ ''>

    <cfinclude template="#url.mcmsPageID#.cfm">

<cfelse>

    <cfoutput>

        <div class="row">

            <div class="col-md-12">

                <h3>Welcome!</h3>

                <p>
                    Welcome to the developer portal for the MCMS Framework for #application.companyName#. 
                    Here you will find information regarding the use of the MCMS framework and details regarding common variables and 
                    settings used by the application.<br/><br/>
                    For more information visit the <a href="http://itwiki:8090/x/KAAK">Web Development Wiki.</a>
                </p>

                <hr/>

                <h4>Terms & Definitions</h4>

                <table class="table table-hover">

                    <thead>
    
                        <tr>
    
                            <th scope="col">Keyword</th>
                            <th scope="col">Description</th>
    
                        </tr>
    
                    </thead>
    
                    <tbody>
    
                        <tr>
    
                            <td>Framework</td>
                            <td>Defined as the "MCMS" framework.</td>
    
                        </tr>

                        <tr>
    
                            <td>Version</td>
                            <td>#application.mcmsVersionPrefix# #application.mcmsVersionFull#</td>
    
                        </tr>
    
                    </tbody>
    
                </table>

            </div>

        </div>

    </cfoutput>

</cfif>