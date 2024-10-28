<!DOCTYPE html>
<html lang="en">

	<cfscript>

		//Set the page settings.
		pageType = "public";

		//Set navigation settings.
		navTemplate= "#application.mcmsAppPublicPath#/view/navigate.cfm";

		//Set search bar settings.
		searchBarTemplate= "#application.mcmsAppPublicPath#/view/search_bar.cfm";
	
		//Set head.
		WriteOutput(objCMS.setHead(pageType=pageType));

		//BEGIN body.
		WriteOutput('<body><div class="container-fluid">');
		
		//Set header.
		WriteOutput(objCMS.setHeader(pageType=pageType, template=""));

		//Set navigation.
		WriteOutput(objNavigation.setNavigation(pageType=pageType, template=navTemplate));

		//Set search bar.
		WriteOutput(objSearch.setSearchBar(pageType=pageType, template=searchBarTemplate));

		//Include main content.
		include "view/index.cfm";

		//Set footer.
		WriteOutput(objCMS.setFooter(pageType=pageType, template=""));
		
		//Set foot.
		WriteOutput(objCMS.setFoot(pageType=pageType));

		WriteOutput('</div></body>');
		//END body.

	</cfscript>

</html>