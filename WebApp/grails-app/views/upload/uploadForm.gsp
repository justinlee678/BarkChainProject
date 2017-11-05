<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>BarkChain</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mdb.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'mdb.min.css')}" type="text/css">
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'style.css')}" type="text/css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

<body>
<script>
    function showFileName(el) {
        $('#upload-file-info').html(el.files[0].name);
        $('input[name="fileName"]').val(el.files[0].name);
    }
</script>
<g:uploadForm action="uploadForm" method="post">
<header>
    <nav class="navbar fixed-top scrolling-navbar navbar-expand-lg navbar-dark homeBar">
        <div class=" spaced ">
            <span>
                <g:link class="navbar-brand navtitle brandtxt" controller="home">
                    <g:img dir="images/res" file="logo6.png" class="img-logo"/><span class="downTxt"> <g:img dir="images/res" file="barkchain.JPG"/></span>
                </g:link>
            </span>
            <span class="centBtn">
                <span style="color:white; font-size:200%;"><b>Hello ${user.firstName}</b></span>
                <g:link controller="home" action="index" class="btn btn-y-active">Logout</g:link>
                <g:link controller="home" action="validate" class="btn btn-y">Validate</g:link>
            </span>
        </div>
    </nav>
</header>

<main>
    <br><br><br><br><br><br><br><br>
    <div class="container lefttext">
        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <div class="card">

                    <!--Card image-->
                    <div class="view overlay hm-white-slight">
                        <g:img dir="images/res" file="chain2.JPG" class="img-fluid"/>
                        <div class="mask"></div>
                    </div>

                    <!--Card content-->
                    <div class="card-body card-body-padded">
                        <!--Title-->
                        <h1 class="card-title">Document upload</h1>
                        <p>Please fill in all fields </p>
                        <!--Text-->
                            <div class="md-form">
                                <input type="text" id="form1" class="form-control" name ="docName" required>
                                <label for="form1" class="">Document title</label>
                                <br>
                            </div>
                            <div class="md-form">
                                <input type="text" id="form2" class="form-control" name="docClass" required>
                                <label for="form2" class="">Document classification</label>
                            </div>

                            <span class ="spaced">
                                <label class="btn btn-primary" for="my-file-selector">
                                    <input id="my-file-selector" name= "myFile" type="file" style="display:none" required onchange="showFileName(this)">Choose File
                                </label>
                                <button class ="btn btn-success" data-toggle="modal" data-target="confirmSubmit">Submit</button>
                            </span>
                        <div class="container midtext" id="fileName">
                            <br>
                            <span class='label label-info' id="upload-file-info">No document chosen</span>
                            <br>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="confirmSubmit" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    <div class="container lefttext">
                    <h3 class="modal-title" id="exampleModalLabel">Confirmation</h3>
                    </div>
                </div>
                <div class="modal-body">
                    <div id="Confirmation">I confirm that all information contained in this document is true</div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-dismiss="modal" id="cancelSubmit">No</button>
                    <button type="submit" class="btn btn-success" id="finalSubmitBtn">Yes</button>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" name="firstName" value="${user.firstName}"/>
    <input type="hidden" name="lastName" value="${user.lastName}"/>
    <input type="hidden" name="email" value="${user.email}"/>
    <input type="hidden" name="fileName"/>
</g:uploadForm>
</main>
<g:javascript src="bootstrap.js" />
<g:javascript src="bootstrap.min.js"/>
<g:javascript src="jquery-2.2.3.js"/>
<g:javascript src="jquery-2.2.3.min.js"/>
<g:javascript src="jquery-3.1.1.js"/>
<g:javascript src="mdb.js"/>
<g:javascript src="mdb.min.js"/>

</body>

</html>
