<div class="row">

    <div class="col-md-12">

        <h1>Bootstrap CSS - 3.4.1 <span class="small">(h1)</span></h1>

        <p>Styles for Bootstrap default theme.</p>

    </div>

</div>

<div class="row">

    <div class="col-md-12">

        <h2>Components <span class="small">(h2)</span></h2>

        <hr/>

    </div>

</div>

<div class="row">

  <div class="col-md-6">

      <h3>Fonts & Text</h3>

      <p>Text - GoodPro-WideNews</p>
      <h3>Header Text (h1 - h3) - QuatroSlab-Bold</h3>
      <h4>Header Text (h4 - h6) - GoodPro-Wide-Bold</h4>
      <p class="text-muted">With faded secondary text</p>
      <p>You can use the mark tag to <mark>highlight</mark> text.</p>
      <p><del>This line of text is meant to be treated as deleted text.</del></p>
      <p><s>This line of text is meant to be treated as no longer accurate.</s></p>
      <p><ins>This line of text is meant to be treated as an addition to the document.</ins></p>
      <p><u>This line of text will render as underlined</u></p>
      <p><small>This line of text is meant to be treated as fine print.</small></p>
      <p><strong>This line rendered as bold text.</strong></p>
      <p><em>This line rendered as italicized text.</em></p>
      <p><abbr title="attribute">attr</abbr></p>
      <p><abbr title="HyperText Markup Language" class="initialism">HTML</abbr></p>

      <h4>Blockquote</h4>

      <blockquote class="blockquote">
        <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>
      </blockquote>

  </div>

  <div class="col-md-6">

    <h3>Headers</h3>

    <h1>h1. Bootstrap heading</h1>
    <h2>h2. Bootstrap heading</h2>
    <h3>h3. Bootstrap heading</h3>
    <h4>h4. Bootstrap heading</h4>
    <h5>h5. Bootstrap heading</h5>
    <h6>h6. Bootstrap heading</h6>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-4">

      <h3>Lists</h3>

      <ul class="list-unstyled">
        <li>Lorem ipsum dolor sit amet</li>
        <li>Consectetur adipiscing elit</li>
        <li>Integer molestie lorem at massa</li>
        <li>Facilisis in pretium nisl aliquet</li>
        <li>Nulla volutpat aliquam velit
          <ul>
            <li>Phasellus iaculis neque</li>
            <li>Purus sodales ultricies</li>
            <li>Vestibulum laoreet porttitor sem</li>
            <li>Ac tristique libero volutpat at</li>
          </ul>
        </li>
        <li>Faucibus porta lacus fringilla vel</li>
        <li>Aenean sit amet erat nunc</li>
        <li>Eget porttitor lorem</li>
      </ul>

  </div>

  <div class="col-md-8">

    <h3>Tables</h3>

    <table class="table table-striped">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">First</th>
          <th scope="col">Last</th>
          <th scope="col">Handle</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
      </tbody>
    </table>

    <h4>Hover</h4>

    <table class="table table-hover">
      <thead>
        <tr>
          <th scope="col">#</th>
          <th scope="col">First</th>
          <th scope="col">Last</th>
          <th scope="col">Handle</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">3</th>
          <td colspan="2">Larry the Bird</td>
          <td>@twitter</td>
        </tr>
      </tbody>
    </table>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-4">

    <h3>Alerts <span class="small">(h3)</span></h3>

    <div class="alert alert-success" role="alert">
        A simple success alert—check it out!
    </div>
    <div class="alert alert-danger" role="alert">
        A simple danger alert—check it out!
    </div>
    <div class="alert alert-warning" role="alert">
        A simple warning alert—check it out!
    </div>
    <div class="alert alert-info" role="alert">
        A simple info alert—check it out!
    </div>

  </div>

  <div class="col-md-8">

      <h3>Breadcrumb</h3>

      <ol class="breadcrumb">
        <li><a href="#">Home</a></li>
        <li><a href="#">Library</a></li>
        <li class="active-breadcrumb"><a href="#">Data</a></li>
      </ol>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-4">

    <h3>Buttons</h3>

    <!-- Standard button -->
    <button type="button" class="btn btn-default btn-lg">Default</button><br/><br/>

    <!-- Provides extra visual weight and identifies the primary action in a set of buttons -->
    <button type="button" class="btn btn-primary btn-lg">Primary</button><br/><br/>

    <!-- Indicates a successful or positive action -->
    <button type="button" class="btn btn-success btn-lg">Success</button><br/><br/>

    <!-- Contextual button for informational alert messages -->
    <button type="button" class="btn btn-info btn-lg">Info</button><br/><br/>

    <!-- Indicates caution should be taken with this action -->
    <button type="button" class="btn btn-warning btn-lg">Warning</button><br/><br/>

    <!-- Indicates a dangerous or potentially negative action -->
    <button type="button" class="btn btn-danger btn-lg">Danger</button><br/><br/>

  </div>

  <div class="col-md-4">

    <h3>Pagination</h3>

    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
      <div class="btn-group" role="group" aria-label="First group">
        <button type="button" class="btn btn-info">Previous</button>
        <button type="button" class="btn btn-info">1</button>
        <button type="button" class="btn btn-info">2</button>
        <button type="button" class="btn btn-info active">3</button>
        <button type="button" class="btn btn-info">4</button>
        <button type="button" class="btn btn-info">Next</button>
      </div>
    </div>

  </div>

  <div class="col-md-4">

    <h3>Alt. Buttons</h3>

    <div class="btn-group" role="group" aria-label="...">
      <button type="button" class="btn btn-default btn-lg">Inactive</button>
      <button type="button" class="btn btn-primary btn-lg">Active</button>
    </div>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-8">

    <h3>Form</h3>

    <form>
      <div class="form-group">
        <label for="exampleInputEmail1">Email address</label>
        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
      </div>
      <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" class="form-control" id="exampleInputPassword1">
      </div>
      <div class="form-group form-check">
        <input type="checkbox" class="form-check-input" id="exampleCheck1">
        <label class="form-check-label" for="exampleCheck1">Check me out</label>
      </div>
      <button type="submit" class="btn btn-default btn-lg">Submit</button>
    </form>

  </div>

  <div class="col-md-4">

    <h3>Range Input</h3>

    <form>
      <div class="form-group">
        <label for="formControlRange">Example Range input</label>
        <input type="range" class="custom-range">
      </div>
    </form>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-12">

    <h3>Jumbotron</h3>

    <div class="jumbotron">
        <h1 class="display-4">Hello, world!</h1>
        <p class="lead">This is a simple hero unit, a simple jumbotron-style component for calling extra attention to featured content or information.</p>
        <hr class="my-4">
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <a class="btn btn-primary btn-lg" href="##" role="button">Learn more</a>
    </div>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-4">

    <h3>List Group</h3>

    <ul class="list-group">
        <li class="list-group-item">Cras justo odio</li>
        <li class="list-group-item">Dapibus ac facilisis in</li>
        <li class="list-group-item">Morbi leo risus</li>
        <li class="list-group-item">Porta ac consectetur ac</li>
        <li class="list-group-item">Vestibulum at eros</li>
    </ul>

  </div>

  <div class="col-md-4">

    <h3>Modal</h3>

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#exampleModal">
        Launch demo modal
    </button>
    
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
      <div class="modal-content">
          <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
          </button>
          </div>
          <div class="modal-body">
          ...
          </div>
          <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">Save changes</button>
          </div>
      </div>
      </div>
    </div>

  </div>

  <div class="col-md-4">

    <h3>Tooltip</h3>

    <!-- HTML to write -->
    <a href="##" data-toggle="tooltip" title="Some tooltip text!">Hover over me</a>

    <!-- Generated markup by the plugin -->
    <div class="tooltip bs-tooltip-top" role="tooltip">
        <div class="arrow"></div>
        <div class="tooltip-inner">
            Some tooltip text!
        </div>
    </div>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-6">

    <h3>Tab Navigation</h3>

    <ul class="nav nav-tabs">
      <li class="nav-item">
        <a class="nav-link active" href="##">Active</a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="##" role="button" aria-haspopup="true" aria-expanded="false">Dropdown</a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="##">Action</a>
          <a class="dropdown-item" href="##">Another action</a>
          <a class="dropdown-item" href="##">Something else here</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="##">Separated link</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="##">Link</a>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="##" tabindex="-1" aria-disabled="true">Disabled</a>
      </li>
    </ul>

  </div>

  <div class="col-md-6">

    <h3>Pills</h3>

    <ul class="nav nav-pills">
      <li role="presentation" class="active"><a href="#">Home</a></li>
      <li role="presentation"><a href="#">Profile</a></li>
      <li role="presentation"><a href="#">Messages</a></li>
    </ul>

  </div>

</div>

<hr/>

<div class="row">

  <div class="col-md-12">

    <h3>Nav Bar</h3>

    <nav class="navbar navbar-default">
      <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Brand</a>
        </div>
    
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav">
            <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">One more separated link</a></li>
              </ul>
            </li>
          </ul>
          <form class="navbar-form navbar-left">
            <div class="form-group">
              <input type="text" class="form-control" placeholder="Search">
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
          </form>
          <ul class="nav navbar-nav navbar-right">
            <li><a href="#">Link</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
              <ul class="dropdown-menu">
                <li><a href="#">Action</a></li>
                <li><a href="#">Another action</a></li>
                <li><a href="#">Something else here</a></li>
                <li role="separator" class="divider"></li>
                <li><a href="#">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div><!-- /.container-fluid -->
    </nav>

  </div>

</div>

<hr/>

<div class="row">

    <div class="col-md-4">

      <h3>Panels</h3>

      <div class="panel panel-default">
        <div class="panel-body">
          Panel content
        </div>
        <div class="panel-footer">Panel footer</div>
      </div>

    </div>

    <div class="col-md-4">

      <h3>Wells</h3>

      <div class="well text-right">

        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        <br/>
        
        <a href="#">Some Text</a>
      
      </div>

  </div>

  <div class="col-md-4">

    <h3>Other</h3>

  </div>

</div>