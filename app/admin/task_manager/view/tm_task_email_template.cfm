<cfscript>

    param name="arguments.ID" default=0;
    param name="arguments.subject" default='';
    param name="arguments.body" default='';
    param name="arguments.message" default='';

    //Set objs.
    objTaskManager = CreateObject("component", application.mcmsComponentPath & '/apps/taskmanager/TaskManager');

    getTaskManagerTaskRet = objTaskManager.getTaskManagerTask(ID=arguments.ID);

    getTaskManagerTaskListingStatusRet = objTaskManager.getTaskManagerTaskListingStatus();

</cfscript>

<!---Body of email.--->
<cfoutput>
    
    <h1>#arguments.subject#</h1>

    <p>
        <!---TODO: Fix URL link.--->
        <a href="#application.mcmsHostURL##application.mcmsAppAdminPath#">View this task listing in S.M.A.R.T.</a><br/>
        <small>NOTE: Access to S.M.A.R.T may require access to a be setup.</small><br/>
    </p>

    <table>

        <!---Column one.--->

        <tr>

            <td width="20%">

                <h3>Task Listing Status Menu</h3>

                <cfloop query="getTaskManagerTaskListingStatusRet">

                    <cfif getTaskManagerTaskListingStatusRet.ID EQ getTaskManagerTaskRet.tmtsID>

                        <span class="check-icon green-icon"></span><strong><u>#tmtlsName#</u></strong><br/>
                        
                    <cfelse>

                        <span class="check-icon"></span>#tmtlsName#<br/>
                    
                    </cfif>


                </cfloop>

                <p>

                    Date: <cfoutput>#DateFormat(Now(), application.dateFormat)# at #TimeFormat(Now(), 'h:mmtt')#

                </p>

            </td>

        </tr>

        <!---Column two.--->

        <tr>

            <td width="80%">

                <p>

                    If you have received this email you are a contributing member of this task.  
                    This email may be only for informational and status update purposes. 
                    Other users may need to complete task.<br/>

                </p>

                <h4>Task Detail</h4>

                <!---Start Detail.--->

                <table>

                    <tr>

                        <th>Task No.</th>
                        <th>Creator</th>
                        <th>Type</th>
                        <th>Priority</th>

                    </tr>

                    <tr>

                        <td id="required">
                            <strong>#getTaskManagerTaskRet.ID#</strong>
                        </td>
                        <td nowrap="nowrap">
                            #getTaskManagerTaskRet.userFName# #getTaskManagerTaskRet.userLName#
                        </td>
                        <td>
                            #getTaskManagerTaskRet.tmttName#
                        </td>
                        <td>
                            #getTaskManagerTaskRet.tmtpName#
                        </td>

                    </tr>

                    <tr>
                        <th>Due Date</th>
                        <th>Rel. Date</th>
                        <th>Exp. Date</th>
                        <th>Task Status</th>
                    </tr>

                    <tr>
                        <td>
                            #DateFormat(getTaskManagerTaskRet.tmtDateDue, application.dateFormat)#
                        </td>
                        <td>
                            #DateFormat(getTaskManagerTaskRet.tmtDateRel, application.dateFormat)#
                        </td>
                        <td>
                            #DateFormat(getTaskManagerTaskRet.tmtDateExp, application.dateFormat)#
                        </td>
                        <td>
                            #getTaskManagerTaskRet.tmtlsName#
                        </td>

                    </tr>

                </table>

                <!---End Detail.--->

            </td>

        </tr>

    </table>

</cfoutput>