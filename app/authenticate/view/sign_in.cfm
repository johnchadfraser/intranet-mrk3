<!---Sign In Form.--->

<div id="mcmsAuthenticateForm">

    <div class="col-md-6 col-md-offset-3">	
    
        <cfoutput>
            
        <cfset formCookie = Evaluate('cookie.MCMS#UCASE(this.name)#')>

        <form name="signInForm" id="signInForm" method="post">

            <div class="form-group">
                    
                <div class="float-label-control">
                    <label for="">Username*</label>
                    <input type="email" name="userEmail" id="userEmail" class="form-control" maxlength="64" value="#formCookie#" placeholder="Email" data-error="##userEmailError" autocapitalize="none" autocomplete="no"/>
                </div>
                    
                <span id="userEmailError"></span>
                    
            </div>
    
            <div class="form-group">
                    
                <div class="float-label-control">
                    <label for="">Password*</label>
                    <input type="password" name="userPassword" id="userPassword" maxlength="32" class="form-control" data-error="##userPasswordError" placeholder="Password" />
                </div>
                    
                <span id="userPasswordError"></span>
                    
            </div>

            <div class="form-group">
                
                <div class="float-label-control">
                        
                    <label class="custom-control custom-checkbox">
                        <input type="checkbox" class="custom-control-input" name="rememberUser" id="rememberUser" value="1" checked="#Iif(Evaluate("cookie.MCMS#UCASE(this.name)#") NEQ '', DE('true'), DE('false'))#"/>
                        <span class="custom-control-indicator"></span>
                        Remember me
                    </label>

                </div>

            </div>
            
            <!---

                <div class="form-group">

                    <cfimage action="captcha" width="200" height="50" text="#makeRandomStringRet#" fonts="Helvetica,Arial" fontsize="24" difficulty="low">

                </div>

                <div class="form-group">

                    <label class="control-label" for="capCode"><b>Verify you are not a robot.</b> <br/>Enter code from image shown above.</label>
                    <input id="capCode" name="capCode" type="text" style="width:80px; margin-right:10px;" class="form-control" size="5" maxlength="5" autocomplete="false" onkeyup="upperCase(this.id)">
                    
                    <span id="capCodeError"></span>

                    <input type="hidden" id="captcha" name="captcha" value="<cfoutput>#makeRandomStringRet#</cfoutput>"/>
                    
                </div>
            
            --->

            <div class="form-group">

                <input name="csrfToken" value="#csrfGenerateToken()#" type="hidden">

                <button name="mcmsSignIn" id="mcmsSignIn" type="submit" class="btn btn-default">Sign In</button>
                
                    <!---Track failed attempts.--->
                <input type="hidden" name="userSignInFailed" id="userSignInFailed" value="#form.userSignInFailed+1#"/> 
    
                <!---Handle redirects.--->
                <cfif url.mcmsRedirect NEQ ''>
                        
                    <input type="hidden" name="mcmsDenied" value="#url.mcmsRedirect#"/>
                            
                <cfelse>
                    
                    <input type="hidden" name="mcmsDenied" value="#url.mcmsDenied#"/>
                        
                </cfif>
                    
            </div>
        
        </form>
        
        <p>
            <small>
                Use your Windows &reg; username and password to Sign In. 
                In most cases the Windows&reg; username and password has already been created. 
                If you are unsure about your username and password please speak with your manager or Help Desk.
            </small>
        </p>
    
        <!---Set form focus.--->
        <cfif Evaluate("cookie.MCMS#UCASE(this.name)#") NEQ "">
            
            <script>document.signInForm.userPassword.focus();</script>
    
        <cfelseif Evaluate("cookie.MCMS#UCASE(this.name)#") EQ "">
            
            <script>document.signInForm.userEmail.focus();</script>
            
        <cfelseif this.showPassword EQ true>
        
            <script>document.signInForm.userPassword.focus();</script>
        
        </cfif>
        
        </cfoutput>

    </div>
	
</div>