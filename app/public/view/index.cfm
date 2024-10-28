

<div id="mcmsMainContainer">

    <cfinclude template="#application.mcmsAppPublicPath#/view/hero.cfm"/>

    <cfinclude template="#application.mcmsAppPublicPath#/dashboard/view/index.cfm"/>

    <cfif CGI.QUERY_STRING EQ ''>

        <cfinclude template="#application.mcmsAppPublicPath#/view/quick_link.cfm"/>

        <cfinclude template="#application.mcmsAppPublicPath#/view/events.cfm"/>

        <cfinclude template="#application.mcmsAppPublicPath#/view/daily_bulletin.cfm"/>

        <cfinclude template="#application.mcmsAppPublicPath#/view/career.cfm"/>

        <cfinclude template="#application.mcmsAppPublicPath#/view/training.cfm"/>

    </cfif>

</div>