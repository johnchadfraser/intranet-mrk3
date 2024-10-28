<!---Set the header.--->
<header id="mcmsHeaderContainer">

    <cfscript>
            
        //Set an application var so the CDN server is hit moderately.
        param name="application.mcmsHeader" default="";
        
        //try {
        
            if (application.mcmsHeader == '') {

                //Set the application var.
                application.mcmsHeader = '';

            }
            
            WriteOutput(application.mcmsHeader);
        
            //} catch(any e) {

                //location(url="/MCMS/template/error.htm", addtoken="false");

            //}

    </cfscript>

	<cfoutput>

		<div class="mcmsHeader">
			
			<div class="page-header" id="page-header-bg">
		
				<div class="row">
		
					<div class="col-sm-12">

						Header here.
						
					</div>
		
				</div>
		
			</div>
		
		</div>

	</cfoutput>

	<cfscript>

	//Include content.
		include "navigate.cfm";

	</cfscript>

</header>