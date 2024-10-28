<!DOCTYPE html>
<html lang="en">

	<cfscript>

		//Set the page settings.
		pageType = "public";

		//Set navigation settings.
		navTemplate = "#application.mcmsAppPublicPath#/view/navigate.cfm";
		navSiteMenuTemplate = "#application.mcmsAppPublicPath#/view/navigate_site_menu.cfm";

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

		//Set navigation menu.
		WriteOutput(objNavigation.setNavigationSiteMenu(pageType=pageType, template=navSiteMenuTemplate));

		//Include main content.
		include "view/index.cfm";
		
		//Set foot.
		WriteOutput(objCMS.setFoot(pageType=pageType));

		WriteOutput('</div></body>');
		//END body.

	</cfscript>

</html>