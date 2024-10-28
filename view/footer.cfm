<!---Get the footer from the CDN server.--->
<footer>
	
	<cfscript>
		
		//Set an application var so the CDN server is hit moderately.
		param name="application.mcmsFooter" default="";
		
		//try {
		
			if (application.mcmsFooter == '') {
    			
    					
    			
    			//Set the application var.
    			application.mcmsFooter = '';

            }
            
			WriteOutput(application.mcmsFooter);
    	
    		//} catch(any e) {

				//location(url="/MCMS/template/error.htm", addtoken="false");

			//}
    
	</cfscript>

</footer>