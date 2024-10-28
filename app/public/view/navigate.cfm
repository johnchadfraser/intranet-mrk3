<!---Set navigation.--->

<nav class="panel-heading">

	<div style="display:block; float:left; width:60px;">

		<a href="/"><span id="mcmsVerticalNavigationContainerHeader"></span><a/>

	</div>

	<div id="mcmsVerticalNavigationContainerMenuHamburger" data-placement="bottom">

		<a id="hamburger" href="javascript:void(0);" onclick="mcmsOpenSlideNav('mcmsVerticalNavigationSlide', 'mcmsMainContainer', 'mcmsVerticalNavigationContainerCollapse', 'mcmsVerticalNavigationContainerCaret', 'mcmsFooter', 'mcmsAlertContainer')">

			<svg width="30" height="30">

				<path d="M0,5 30,5" stroke="#fff" stroke-width="2"/>
				<path d="M0,14 30,14" stroke="#fff" stroke-width="2"/>
				<path d="M0,23 30,23" stroke="#fff" stroke-width="2"/>

			</svg>

		</a>

	</div>

</nav>

<div id="mcmsVerticalNavigationSlide" class="mcmsVerticalNavigationContainer">

	<div class="list-group panel">

		<span class="mcmsVerticalNavigationContainerCollapse">
			<br/>
		<a href="javascript:void(0);" class="list-group-item list-group-item" onclick="mcmsCloseSlideNav('mcmsVerticalNavigationSlide', 'mcmsMainContainer', 'mcmsVerticalNavigationContainerCollapse', 'mcmsVerticalNavigationContainerCaret')">
			<span class="close_icon"></span>Close
		</a>
		<hr class="mcmsGreyColor"/>
		</span>

		<a href="/" class="list-group-item list-group-item">
			
			<span class="home_icon"></span><div class="mcmsVerticalNavigationContainerCollapse">Home</div>
			
		</a>

		<!---Set application menus.--->
		<cfif getMenuApplicationRelRet.recordcount NEQ 0>

			<cfoutput query="getMenuApplicationRelRet" group="menuID">
		
				<a href="###menuID#Application" class="list-group-item list-group-item collapsed" data-parent="##mcmsVerticalNavigationContainer" data-toggle="collapse" aria-expanded="false" onclick="mcmsOpenSlideNav('mcmsVerticalNavigationSlide', 'mcmsMainContainer', 'mcmsVerticalNavigationContainerCollapse', 'mcmsVerticalNavigationContainerCaret', 'mcmsFooter', 'mcmsAlertContainer');">
					<span class="#iif(menuCSSClass EQ '', DE('default_icon'), DE(menuCSSClass))#"></span><div class="mcmsVerticalNavigationContainerCollapse">#menuName#</div>
					<span class="mcmsVerticalNavigationContainerCaret"></span>
				</a>

				<span class="mcmsVerticalNavigationContainerCollapse">
					
					<div class="collapse" id="#menuID#Application" aria-expanded="false">

						<cfoutput>

							<!---Construct path based on if URL is a direct URL or the URL is a admin or public application.--->
							<cfif appURL CONTAINS "http">

								<cfset applicationURL = appURL>

							<cfelse>
								
								<cfset applicationURL = iif(ListContains(application.mcmsAppTypeAdmin, apptID), DE(application.mcmsAppAdminPath & appURL), DE(application.mcmsAppPublicPath & appURL))>

							</cfif>
						
							<a href="#applicationURL#" target="#marTarget#" class="list-group-item"><div class="mcmsVerticalNavigationContainerBullet"></div> #iif(appName NEQ appNameAlt, DE(appName), DE(appNameAlt))#</a>
						
						</cfoutput>

					</div>

				</span>

			</cfoutput>
		
		</cfif>

		<!---Set dashboard menus.--->
		<cfif getDashboardRet.recordcount NEQ 0>

			<cfoutput query="getDashboardRet" group="deptNo">

				<cfscript>

					//Get any links associated to this site and department.
					getLinkSiteDepartmentRelRet = objLink.getLinkSiteDepartmentRel(ltID=2, siteNo=100, deptNo=deptNo, netID=application.mcmsNetworkID, lStatus=1);
				
				</cfscript>
		
				<a href="###deptNo#Dashboard" class="list-group-item list-group-item collapsed" data-parent="##mcmsVerticalNavigationContainer" data-toggle="collapse" aria-expanded="false" onclick="mcmsOpenSlideNav('mcmsVerticalNavigationSlide', 'mcmsMainContainer', 'mcmsVerticalNavigationContainerCollapse', 'mcmsVerticalNavigationContainerCaret', 'mcmsFooter', 'mcmsAlertContainer')">
					<span class="default_icon"></span><div class="mcmsVerticalNavigationContainerCollapse">#deptName#</div>
					<span class="mcmsVerticalNavigationContainerCaret"></span>
				</a>
					
				<div class="collapse" id="#deptNo#Dashboard" aria-expanded="false">

					<cfoutput>
						<a href="?ppdID=#ppID#" class="list-group-item"><div class="mcmsVerticalNavigationContainerBullet"></div> #ppTitle#</a>
					</cfoutput>

					<!---Loop through any links by site and department.--->
					<cfloop query="getLinkSiteDepartmentRelRet">

						<a href="#lURL#" target="#lTarget#" class="list-group-item"><div class="mcmsVerticalNavigationContainerBullet"></div> #lName#</a>

					</cfloop>

				</div>

			</cfoutput>
		
		</cfif>

		<!---Set link menu based on site and department.--->
		<cfscript>

			getLinkSiteDepartmentRelRet = objLink.getLinkSiteDepartmentRel(ltID=2, siteNo=request.siteNo, deptNo=request.deptNo, netID=application.mcmsNetworkID, lStatus=1);

		</cfscript>

		<cfif getLinkSiteDepartmentRelRet.recordcount NEQ 0>

			<cfoutput query="getLinkSiteDepartmentRelRet" group="ltID">

				<a href="###id#Link" class="list-group-item list-group-item collapsed" data-parent="##mcmsVerticalNavigationContainer" data-toggle="collapse" aria-expanded="false" onclick="mcmsOpenSlideNav('mcmsVerticalNavigationSlide', 'mcmsMainContainer', 'mcmsVerticalNavigationContainerCollapse', 'mcmsVerticalNavigationContainerCaret', 'mcmsFooter', 'mcmsAlertContainer')">
					<span class="link_icon"></span><div class="mcmsVerticalNavigationContainerCollapse">Links</div>
					<span class="mcmsVerticalNavigationContainerCaret"></span>
				</a>
		
				<div class="collapse" id="#id#Link" aria-expanded="false">

					<cfoutput>
						<a href="#lURL#" target="#lTarget#" class="list-group-item"><div class="mcmsVerticalNavigationContainerBullet"></div> #lName#</a>
					</cfoutput>

				</div>

			</cfoutput>
		
		</cfif>

	</div>

</div>

