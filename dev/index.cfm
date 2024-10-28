<!DOCTYPE html>
<html lang="en">
	
	<cfscript>

		//Set the page settings.
		pageType = "public";
	
		//Set head.
		WriteOutput(objCMS.setHead(pageType=pageType));

		//BEGIN body.
		WriteOutput('<body><div class="container">');

		//Include main content.
		include "view/index.cfm";
		
		//Set foot.
		WriteOutput(objCMS.setFoot(pageType=pageType));

		WriteOutput('</div></body>');
		//END body.

	</cfscript>

</html>