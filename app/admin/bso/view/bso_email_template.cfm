<cfscript>

    param name="arguments.ID" default=0;
    param name="arguments.subject" default='Bow String Order';

    //Set objs.
    objBSO = CreateObject("component", application.mcmsComponentPath & '/apps/bso/BSO');

    getBSORet = objBSO.getBSO(ID=arguments.ID);

    getBSOLineRet = objBSO.getBSOLine(bsoID=arguments.ID);

    getBSOLogRet = objBSO.getBSOLog(bsoID=arguments.ID);

</cfscript>

<!---Body of email.--->
<cfoutput>
    
    <h1>#arguments.emailSubject# No. #arguments.ID#</h1>

    <p>
        <strong>This bow string order has been updated.</strong><br/>
    </p>

    <p>
        <!---TODO: Fix URL link.--->
        <a href="#application.mcmsHostURL##application.mcmsAppAdminPath#">View this Bow String Order</a><br/>
    </p>

    <h3>Sales Information</h3>

    <table>

        <tr>

            <th>P.O. No.</th>
            <th>Register No.</th>
            <th>Receipt No.</th>
            <th>Order Status</th>

        </tr>

        <tr>

            <td>

                <cfif getBSORet.bsoPONO NEQ ''>

                    #getBSORet.bsoPONO#

                <cfelse>

                    N/A

                </cfif>

            </td>
            <td>
                #getBSORet.posID#
            </td>
            <td>
                #getBSORet.bsoReceiptNo#
            </td>
            <td>
                #getBSORet.bsosName#
            </td>

        </tr>

        <tr>

            <th>Shipping & Handling</th>
            <th>Subtotal</th>
            <th>Tax</th>
            <th>Total</th>

        </tr>

        <tr>

            <td>

                <cfif getBSORet.bsoSH EQ 0>

                    Standard Shipping (Free)

                <cfelseif getBSORet.bsoSH EQ 10>

                    Expedited ($10.00 per set)

                <cfelse>

                    Overnight ($60.00)

                </cfif>

            </td>
            <td>
                #DollarFormat(getBSORet.bsoSubtotal)#
            </td>
            <td>
                #DollarFormat(getBSORet.bsoTax)#
            </td>
            <td>
                #DollarFormat(getBSORet.bsoTotal)#
            </td>

        </tr>

    </table>

    <h3>Line Detail</h3>

    <table>

        <tr>

            <th>SKU</th>
            <th>Description</th>
            <th>Length (Inches)</th>
            <th>Price</th>
            <th>Qty</th>

        </tr>

        <cfloop query="getBSOLineRet">

            <tr>

                <td>#bsoSku#</td>
				<td>
                    <b>#bsoskuDescription#</b><br>
                    Make: <cfif bsoaBowMakeName EQ ''>#bsoaBowMakeOther#<cfelse>#bsoaBowMakeName#</cfif><br>
                    Model: #bsoaBowModel#<br>
                    Cam Type: #bsoaCamType#<br>
                    Color(s): #bsoaColor1# / #bsoaColor2#
				</td>
				<td>#bsolLength#</td>
				<td>#DollarFormat(bsoskuPrice)#</td>
				<td>#bsolQty#</td>

            </tr>

        </cfloop>

    </table>

    <cfif getBSOLogRet.recordcount NEQ 0>

        <h3>Logs</h3>

        <table>

            <cfloop query="getBSOLogRet">

            <tr>

                <td>
                    <strong>#DateFormat(getBSOLogRet.bsolDate, application.dateFormat)# - #getBSOLogRet.userFName# #getBSOLogRet.userLName#</strong><br>
                    <p>#getBSOLogRet.bsolLog#</p>
                </td>
                
            </tr>

            </cfloop>

        </table>

    </cfif>

    <p>

        Date: <cfoutput>#DateFormat(Now(), application.dateFormat)# at #TimeFormat(Now(), 'h:mmtt')#

    </p>

</cfoutput>