component  
{

	this.name = "Intranet";
	this.applicationtimeout = createTimeSpan(0, 2, 0, 0);
	this.sessiontimeout = createTimeSpan(0, 2, 0, 0);
	this.sessionmanagement = "true";
	this.setclientcookies = "true";

	//Set any websockets.
	this.wschannels = [{name="alert"}, {name="stock"}];

	if (CGI.SERVER_NAME CONTAINS '.mcms.') {
		
		this.datasource = 'mcms_dev';
		this.datasourceUser = 'swweb';
		this.serverENV = 'DEV';	
		this.cacheTime = '0,0,0,0';
		this.cdnURL = 'https://cdn.mcms.com';
		this.srcCSS = 'css/src';
		this.srcJS = 'js/src';
		this.hostURL = 'http://intranet-mrk3.mcms.com';	
		this.wwwURL = 'https://www.sportsmans.com';
		this.reportURL = 'https://report.mcms.com';
		this.maintenanceURL = 'https://maintenance-dev.sportsmans.com';
		this.mcmsPingSource = 'false';
		this.mcmsSSLRequired = 'false';
		this.mcmsEmailError = 'false';
		this.mcmsUseSMSEmailError = 'false';
		this.mcmsRepositoryDrive = 'D:\';

		//Set mappings.
		this.mappings = {"/MCMS" = 'T:\websites\mcms_mrk3\MCMS' };
		
	} else if (CGI.SERVER_NAME CONTAINS '-dev.') {
		
		this.datasource = 'mcms_dev';
		this.datasourceUser = 'swweb';
		this.serverENV = 'DEV';
		this.cacheTime = '0,0,0,0';
		this.cdnURL = 'https://cdn-dev.sportsmans.com';
		this.srcCSS = 'css/src';
		this.srcJS = 'js/src';
		this.hostURL = 'https://intranet-dev.smwh.net';	
		this.wwwURL = 'https://www.sportsmans.com';
		this.reportURL = 'https://report-dev.smwh.net';
		this.maintenanceURL = 'https://maintenance-dev.sportsmans.com';
		this.mcmsPingSource = 'false';
		this.mcmsSSLRequired = 'true';
		this.mcmsEmailError = 'false';
		this.mcmsUseSMSEmailError = 'false';
		this.mcmsRepositoryDrive = 'D:\';

		//Set mappings.
		this.mappings = {"/MCMS" = 'T:\websites\mcms_mrk3\MCMS' };
		
	} else if (CGI.SERVER_NAME CONTAINS '-uat.') {
		
		this.datasource = 'mcms_uat';
		this.datasourceUser = 'swweb';
		this.serverENV = 'UAT';
		this.cacheTime = '0,4,0,0';
		this.cdnURL = 'https://cdn.sportsmans.com';
		this.srcCSS = 'css/src';
		this.srcJS = 'js/src';
		this.hostURL = 'https://intranet-uat.smwh.net';	
		this.wwwURL = 'https://www.sportsmans.com';
		this.reportURL = 'https://report.smwh.net';
		this.maintenanceURL = 'https://maintenance.sportsmans.com';
		this.mcmsPingSource = 'false';
		this.mcmsSSLRequired = 'true';
		this.mcmsEmailError = 'true';
		this.mcmsUseSMSEmailError = 'true';
		this.mcmsRepositoryDrive = 'D:\';

		//Set mappings.
		this.mappings = {"/MCMS" = 'T:\websites\mcms_mrk3\MCMS' };
				
	} else {
		
		this.datasource = 'mcms_prod';
		this.datasourceUser = 'swweb';
		this.serverENV = 'PROD';
		this.cacheTime = '0,4,0,0';
		this.cdnURL = 'https://cdn.sportsmans.com';
		this.srcCSS = 'css/min';
		this.srcJS = 'js/min';	
		this.hostURL = 'https://intranet.smwh.net';	
		this.wwwURL = 'https://www.sportsmans.com';
		this.reportURL = 'https://report.smwh.net';
		this.yextURL = 'https://stores.sportsmans.com';
		this.maintenanceURL = 'https://maintenance.sportsmans.com';
		this.mcmsPingSource = 'true';
		this.mcmsSSLRequired = 'true';
		this.mcmsEmailError = 'true';
		this.mcmsUseSMSEmailError = 'true';
		this.mcmsRepositoryDrive = 'D:\';

		//Set mappings.
		this.mappings = {"/MCMS" = 'T:\websites\mcms_mrk3\MCMS' };
		
	}	

	//Set application default settings for all environments.

	//Semantic versioning.
	this.mcmsVersionMajor = "3";
	this.mcmsVersionMinor = "0";
	this.mcmsVersionPatch = "0";
	this.mcmsVersionDelimeter = ".";
	this.mcmsVersionDelimeterAlt = "_";
	this.mcmsVersionFull = this.mcmsVersionMajor & this.mcmsVersionDelimeter & this.mcmsVersionMinor & this.mcmsVersionDelimeter & this.mcmsVersionPatch;
	this.mcmsVersionFullAlt = this.mcmsVersionMajor & this.mcmsVersionDelimeterAlt & this.mcmsVersionMinor & this.mcmsVersionDelimeterAlt & this.mcmsVersionPatch;
	this.mcmsVersionPrefix = "mrk";

	//Set the deault network type.
	this.networkID = 2;

	//Set the default application types for admin/public.
	this.appTypePublic = '5,7,10';
	this.appTypeAdmin = '4,6,10,13';

// [START onApplicationStart]

	public boolean function onApplicationStart() {
		
		try {

			param name="application.mcmsVersionMajor" type="string" default=this.mcmsVersionMajor;
			param name="application.mcmsVersionMinor" type="string" default=this.mcmsVersionMinor;
			param name="application.mcmsVersionPatch" type="string" default=this.mcmsVersionPatch;
			param name="application.mcmsVersionDelimeter" type="string" default=this.mcmsVersionDelimeter;
			param name="application.mcmsVersionDelimeterAlt" type="string" default=this.mcmsVersionDelimeterAlt;
			param name="application.mcmsVersionFull" type="string" default=this.mcmsVersionFull;
			param name="application.mcmsVersionFullAlt" type="string" default=this.mcmsVersionFullAlt;
			param name="application.mcmsVersionPrefix" type="string" default=this.mcmsVersionPrefix;
			param name="application.mcmsPageTitle" type="string" default="Intranet - Sportsman's Warehouse";
			param name="application.mcmsMetaDescription" type="string" default="Intranet - Sportsman's Warehouse.";
			param name="application.mcmsThemeColor" type="string" default="##387f50";
			param name="application.mcmsDSN" type="string" default="#this.datasource#";
			param name="application.mcmsDSNUser" type="string" default="#this.datasourceUser#";
			param name="application.mcmsCacheTime" type="string" default="#this.cacheTime#";
			param name="application.mcmsCacheRegionList" type="string" default="";
			param name="application.mcmsEmailError" type="string" default="#this.mcmsEmailError#";
			param name="application.mcmsUseSMSEmailError" type="string" default="#this.mcmsUseSMSEmailError#";
			param name="application.mcmsServerEnv" type="string" default="#this.serverENV#";
			param name="application.mcmsCDNURL" type="string" default="#this.cdnURL#";
			param name="application.mcmsHostURL" type="string" default="#this.hostURL#";
			param name="application.mcmsWWWURL" type="string" default="#this.wwwURL#";
			param name="application.mcmsReportURL" type="string" default="#this.reportURL#";
			param name="application.mcmsMaintenanceURL" type="string" default="#this.maintenanceURL#";
			param name="application.mcmsPingSource" type="string" default="#this.mcmsPingSource#";
			param name="application.mcmsCSS" type="string" default="#this.srcCSS#";
			param name="application.mcmsJS" type="string" default="#this.srcJS#";
			param name="application.mcmsSSLRequired" type="string" default="#this.mcmsSSLRequired#";
			param name="application.mcmsDir" type="string" default="MCMS";
			param name="application.mcmsRepositoryDrive" type="string" default="#this.mcmsRepositoryDrive#";
			param name="application.mcmsRepositoryDir" type="string" default="repository";
			param name="application.mcmsNetworkID" type="string" default="#this.networkID#";
			param name="application.mcmsAppTypePublic" type="string" default="#this.appTypePublic#";
			param name="application.mcmsAppTypeAdmin" type="string" default="#this.appTypeAdmin#";	
			
			//Set default cookie law. True if in use.	
			param name="application.mcmsCookieLaw" type="string" default="false";

			//Set the alert based on the server/network.
			application.alertType = '1';
		
			//Set Application vars for MCMS.
			//TODO: Add to configuration file of MCMS.
			application.mcmsPath = '/MCMS';
			application.mcmsComponentPath = '/MCMS/component';
			application.mcmsJSPackagePath = '/MCMS/js/package';
			application.mcmsJSPackageThemePath = 'theme/default';
			application.mcmsHomePath = '/';
			application.mcmsAppAdminPath = '/app/admin';
			application.mcmsAppPublicPath = '/app/public';
			application.mcmsEmailFormPath = '/app/public/email';
			application.mcmsAppCustomPath = '/app/custom';
			application.mcmsAuthenticatePath = '/app/authenticate';
			application.mcmsTemplatePath = '/MCMS/template'; 
			application.mcmsCustomizePath = '/app/custom';
		
			invoke('#application.mcmsComponentPath#/mcms/cms/Cms', 'setApplicationGlobal', {agtID=2, agStatus=1});
			
			return true;
			
		} catch(any e) {

			message = "CMS Error: An error occurred with the onApplicationStart() function.";
			invoke('Application', 'onError', {e=e, eventName=message});

		}

	}

	// [END onApplicationStart]

	// [START onSessionStart]

	public void function onSessionStart() {

		param name="session.timeoutSeconds" type="string" default="1800";
			
		return;

	}

	// [END onSessionStart]


	// [START onSessionEnd]

	public void function onSessionEnd(struct sessionScope, struct applicationScope={}) {
			
		if (isStruct(SESSION)) {
			
			structClear(SESSION);

		}

		return;

	}

	// [END onSessionEnd]

	// [START onRequestStart]

	public boolean function onRequestStart(required string targetPage) {

		try {
			
			//Force the application to use SSL.
			if(CGI.SERVER_PORT_SECURE == 0 AND application.mcmsSSLRequired == 'true') {
			
				GetPageContext().GetResponse().sendRedirect("#application.mcmsHostURL#");

			}		

			//If the application is reset remove the application cache and restart the application and return results with mcmsDebug. For development 127.0.0.1 should be added.

			if (StructKeyExists(URL,'mcmsReset') AND StructKeyExists(application,'developerIPList')) {
		
				if (ListContains(application.developerIPList, CGI.REMOTE_ADDR)) {
			
					if(url.mcmsReset == true) {

						//Remove all known cache regions.
						cacheRegionList = ListToArray(application.mcmsCacheRegionList);

						for(cacheRegion in cacheRegionList) {

							if(cacheRegionExists(cacheRegion)) {

								cacheRemoveAll(cacheRegion);

							}

						}

						structClear(application);
						structClear(url);
						structClear(session);
						onApplicationStart();
						location(url="#application.mcmsHomePath#", addtoken="false");

					}
				
				}
			}
			
			if (application.mcmsPingSource == 'true') {
			
				//Ping check to see the www site is up.
				cfhttp(method="GET", charset="utf-8", url="#application.mcmsWWWURL#", result="pingTest", timeout="30") {
					}
					
				if (pingTest.statusCode == '408 Request Time-out') {
					
					location(url="#application.mcmsMaintenanceURL#/?mcmsReferrer=#application.mcmsHostURL#", addtoken="false");
					
				}
				
			}
			
			wddxFilePath = '#application.mcmsHostURL#/lib/neo-runtime.xml';
			rootElement = 'data.xmlChildren[1].xmlChildren[7].xmlChildren[2].xmlChildren[1].xmlChildren[2].xmlChildren[1].xmlText';
			
			//If call on neo-time.xml file is successsful.
			if(application.mcmsServerEnv != 'DEV') {

				try {

					timeoutSeconds = invoke('#application.mcmsComponentPath#/security/Security', 'setTimeoutWarning', {wddxFilePath=wddxFilePath, rootElement=rootElement});

					session.timeoutSeconds = timeoutSeconds;

				} catch(any e) {

						//Use default session timeout.

				}

			}
		
			//Get global request variables.	
			setApplicationGlobalRet =  invoke('#application.mcmsComponentPath#/mcms/cms/Cms', 'setApplicationGlobal', {agtID=1, agStatus=1});

			//COOKIE params
			param name="cookie.MCMS#ucase(this.name)#" type="string" default="";
			param name="cookie.MCMS#ucase(this.name & '.USERREMEMBER')#" type="string" default="";
			param name="cookie.MCMS#ucase(this.name & '.ACCEPT')#" type="string" default="false";
		
			//Define parameters.
			setParametersRet = invoke('#application.mcmsComponentPath#/mcms/cms/Cms', 'setParameters', {});
			
			//Set the request variables for site and department.
			setIPAddressRequestRet = invoke('#application.mcmsComponentPath#/utils/network/Network', 'setIPAddressRequest', {ipAddress=url.remoteIPAddress});
			
			//Construct the requested path to redirect including.
			strURL = Replace(CGI.SCRIPT_NAME, 'index.cfm', '') & '?' & CGI.QUERY_STRING;
			
			if (IsDefined("url._cf_containerId")) {
				
				strURL = this.appURL & "?appID=#this.appID#";
			
			}
			
			//Cookie law.    	
			if(url.mcmsCookieAccept EQ 'true') {
				
				SetVariable("cookie.MCMS#ucase(this.name & '.accept')#", 'true');
				
			}

			//Check request to clode alerat meesage for session.
			if(IsDefined('form.mcmsShowAlert')) {

                session.mcmsShowAlert = form.mcmsShowAlert;

            }

			return true;
		
		} catch(any e) {

			message = "CMS Error: An error occurred with the onRequestStart() function.";
			invoke('Application', 'onError', {e=e, eventName=message});

		}

	}

	// [END onRequestStart]


	// [START onRequest]

	public void function onRequest(required string targetPage) {
			
			//If sign out is requested.
			if (url.mcmsSignOut == 'true') {
				
				//Sign out user and kill session.
				invoke('Application', 'OnSessionEnd');
				
				//Redirect to root.
				location(url="/", addtoken="false");
				
			}
					
			//Redirect to authentication.
			if (CGI.SCRIPT_NAME CONTAINS application.mcmsAppAdminPath && session.signedIn == "false" && url.mcmsDenied == "") {
		
				location(url="#application.mcmsAuthenticatePath#/?mcmsDenied=#URLEncodedFormat(strURL)#", addtoken="false");
		
			}
		
			//Set objects for this site.
			objCMS = CreateObject("component", application.mcmsComponentPath & '/mcms/cms/Cms');
			objNavigation = CreateObject("component", application.mcmsComponentPath & '/mcms/navigation/Navigation');
			objSearch = CreateObject("component", application.mcmsComponentPath & '/mcms/search/Search');
			objSite = CreateObject("component", application.mcmsComponentPath & '/mcms/site/Site');
			objUser = CreateObject("component", application.mcmsComponentPath & '/mcms/user/User');
			objDocument = CreateObject("component", application.mcmsComponentPath & '/mcms/document/Document');
			objPrint = CreateObject("component", application.mcmsComponentPath & '/utils/print/Print');
			objList = CreateObject("component", application.mcmsComponentPath & '/utils/list/List');
			objSecurity = CreateObject("component", application.mcmsComponentPath & '/security/Security');
			objCaptcha = CreateObject("component", application.mcmsComponentPath & '/utils/captcha/Captcha');
			objCookie = CreateObject("component", application.mcmsComponentPath & '/utils/cookie/Cookie');
			
			//Include the requested page.
			include arguments.targetPage;
			
	}

	// [END onRequest]

	// [START onError]


	public void function onError(required any e, required string eventName="Error") {
		
		var result = '';
		line='No line.';

		if (!ArrayIsEmpty(e.TagContext)) {

			line = e.TagContext[1].LINE;

		}

		WriteLog(type='Error', file='mcms_error', text='#arguments.eventName#: #e.message# Line: #line#');

		//For javascript functions return a error back to ajax calls when there is an error.
		//cfheader(statuscode="500", statustext="Error"); 

		savecontent variable="result" { 

			message = arguments.eventName;

			WriteOutput(message);

		}

		//Check that application scope even set to error properly. The mcmsEmail application variable must exist.

		if (application.mcmsEmailError == true) {

			//Email body
			savecontent variable="emailBody" { 			
				
				WriteOutput("An error occurred. See mcms_error.log for more information.
					<br/>
					<br/>
					Detail: #e.message#
					<br/>
					Template: #e.tagcontext[1].template#
					<br/>
					Line: #e.tagcontext[1].line#
				");
			
			}
			
			//SMS body.
			savecontent variable="smsBody" { 			
				
				WriteOutput("
					#e.message# 
					#e.tagcontext[1].template#
					#e.tagcontext[1].line#
				");
			
			} 
			
			//Send email.
			mailerService = new mail();
			mailerService.setTo(application.webmasterEmail); 
			mailerService.setFrom(application.noreplyEmail);		
			mailerService.setSubject(application.companyName & ' ' & this.name & ' Error'); 
			mailerService.setType("html");
			mailerService.send(body=emailBody);

			//Only use SMS if set to true.
			if (application.mcmsUseSMSEmailError == true) {
				
				smsService = new mail();
				smsService.setTo(application.webmasterSMSEmail); 
				smsService.setFrom(application.noreplyEmail);
				smsService.setSubject(application.applicationname & ' Error');
				smsService.setType("html");
				smsService.send(body=smsBody);
				
			}

		}

		if (StructKeyExists(application,'developerIPList')) {

			//if the error occurs when developer PC is being used. Dump exception to screen. Otherwise fail gracefully.
			if (ListContains(application.developerIPList, CGI.REMOTE_ADDR)) {
		
				WriteOutput('<h2>MCMS Developer Debug Mode - Developer IP: #CGI.REMOTE_ADDR#</h2>');
				WriteDump(e);

			} else {

				location(url="/MCMS/template/error.htm", addtoken="false");

			}
		
		//If the error is critical at the root application scope level then throw a checklog page. Then clear structs to get a reset of the application.
		} else {

			if (StructKeyExists(URL,'mcmsReset')) {

				cacheRemoveAll();
				structClear(application);
				structClear(URL);
				onApplicationStart();

				location(url="/?mcmsResetConfirm=true", addtoken="false");


			} else {

				//location(url="/MCMS/template/error_check_log.htm", addtoken="false");

			}
				
		}
		
	}

	// [END onError]


	// [START onMissingTemplate]

	public boolean function onMissingTemplate(required string targetPage) {

		include "/MCMS/template/missing_template.htm";
		
		return true;

	}

	// [End onMissingTemplate]

}