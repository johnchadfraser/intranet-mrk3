<div class="row">

    <div class="col-md-12">

        <h2>Development</h2>

        <p>Use this page to identify specific development environment requirements.</p>

    </div>

    <div class="col-md-12">

        <h3>Variables</h3>

        <p>
            Information regarding variable structure.
            <br/>
            <br/>
        </p>

        <h4>Structure Variables</h4>

        <p>
            The framework supports some default values for structure variables.  Structure variables consist of the following:

            <ul>

                <li>form</li>
                <li>url</li>
                <li>request</li>
                <li>session</li>
                <li>application</li>
                <li>cookie</li>
            </ul>

            These structures have some inheritted default parameters exclusively used for the framework with set default values.<br/><br/>

            The most significant exclusive parameters are:

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th scope="col">Name</th>
                        <th scope="col">Structures Used</th>
                        <th scope="col">Description</th>
                        <th scope="col">Default Value</th>

                    </tr>

                </thead>

                <tbody>

                    <tr>

                        <td>siteNo</td>
                        <td>form, url, session, request</td>
                        <td>All sites.</td>
                        <td>100</td>

                    </tr>

                    <tr>

                        <td>deptNo</td>
                        <td>form, url, session, request</td>
                        <td>All departments.</td>
                        <td>0</td>

                    </tr>

                </tbody>

            </table>

        </p>

        <hr/>

        <h4>Request Variables</h4>

        <p>
            Request variables are generated at each web page request and are set at the application level 
            or can be created and overriden at any time.  The following are a list of inherited request variables generated
            by the MCMS framework.

            <br/>

            <table class="table table-hover">

                <thead>

                    <tr>

                        <th scope="col">Name</th>
                        <th scope="col">Description</th>
                        <th scope="col">Default Value</th>

                    </tr>

                </thead>

                <tbody>

                    <tr>

                        <td>request.siteNo</td>
                        <td>Used to filter data based on site number.</td>
                        <td>100</td>

                    </tr>

                    <tr>

                        <td>request.deptNo</td>
                        <td>Used to filter data based on department number.</td>
                        <td>0</td>

                    </tr>

                </tbody>

            </table>

        </p>

    </div>

</div>