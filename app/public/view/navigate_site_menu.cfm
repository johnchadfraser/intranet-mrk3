<div id="mcmsNavigationSiteMenuContainer">

    <cfoutput>

        <!---Include mega menu for support.--->
        
        <span class="dropdown dropdown-support">

            <a href="##" class="dropdown-toggle" data-toggle="dropdown"><span class="support_icon"></span>Support</a>
            <a href="#application.mcmsAuthenticatePath#" class="dropdown"><span class="user_icon"></span>Sign In</a>

            <ul class="dropdown-menu dropdown-menu-support row no-gutter">

                <li class="col-md-4">

                    <ul>

                        <li class="dropdown-header">I.T. Support</li>

                        <li><a href="tel:#application.helpDeskTelephone#" rel="nofollow"><span class="support_icon"></span>Ext. #application.helpDeskExtension#</a></li>
                        <li><a href="#application.helpDeskServiceURL#" target="_blank"><span class="bell_icon"></span>Service Desk</a></li>
                        <li><a href="#application.helpDeskTicketURL#" target="_blank"><span class="ticket_icon"></span>Create a Ticket</a></li>

                        <li class="dropdown-subheader">Hours<hr/></li>

                        <li class="dropdown-content">#application.helpDeskHours#</li>

                    </ul>

                </li>

                <li class="col-md-4">

                    <ul>

                        <li class="dropdown-header">HR Support</li>

                        <li><a href="tel:#application.hrTelephone#" rel="nofollow"><span class="support_icon"></span>#application.hrTelephone#</a></li>
                        <li><a href="#application.hrURL#" target="blank"><span class="link_icon"></span>Ultipro</a></li>
                        <li><a href="#application.mcmsEmailFormPath#/?toEmail=#application.hrEmail#&subject=HR Inquiry"><span class="email_icon"></span>Email HR</a></li>

                        <li class="dropdown-subheader">Hours<hr/></li>

                        <li class="dropdown-content">
                            
                            <cfif TimeFormat(Now()) LTE TimeFormat(application.hrCloseTime) AND TimeFormat(Now()) GTE TimeFormat(application.hrOpenTime)>

                                #application.hrOpenMessage#
            
                            <cfelse>
            
                                #application.hrClosedMessage#
            
                            </cfif>

                        </li>

                    </ul>

                </li>

                <li class="col-md-4">

                    <ul>

                        <li class="dropdown-header">Customer Care</li>

                        <li><a href="tel:#application.kustomerPhone#" rel="nofollow"><span class="support_icon"></span>#application.kustomerPhone#</a></li>
                        <li><a href="#application.kustomerSupportURL#" target="blank"><span class="link_icon"></span>Support Website</a></li>
                        <li><a href="#application.kustomerEmailFormURL#" target="blank"><span class="email_icon"></span>Email Customer Care</a></li>

                        <li class="dropdown-subheader">Hours<hr/></li>

                        <li class="dropdown-content">
                            
                            <cfif TimeFormat(Now()) LTE TimeFormat(application.kustomerCloseTime) AND TimeFormat(Now()) GTE TimeFormat(application.kustomerOpenTime)>

                                #application.kustomerOpenMessage#
            
                            <cfelse>
            
                                #application.kustomerClosedMessage#
            
                            </cfif>

                        </li>

                    </ul>

                </li>
                
            </ul>

        </span>

    </cfoutput>
    
</div>     