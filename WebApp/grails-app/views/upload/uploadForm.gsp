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

</head>

<body>
<g:form controller="home">
    <header>

        <nav class="navbar fixed-top scrolling-navbar navbar-expand-lg navbar-dark homeBar">
            <div class=" spaced ">
                <span>
                    <g:link class="navbar-brand navtitle brandtxt" controller="home">
                        <g:img dir="images/res" file="logo6.png" class="img-logo"/><span class="downTxt"> <g:img dir="images/res" file="barkchain.JPG"/></span>
                    </g:link>
                </span>

                <span class="centBtn">
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
                            <g:img dir="images/res" file="dogs3.jpg" class="img-fluid"/>

                            <a href="#">
                                <div class="mask"></div>
                            </a>
                        </div>

                        <!--Card content-->
                        <div class="card-body card-body-padded">
                            <!--Title-->
                            <h3 class="card-title">Please complete all fields</h3>
                            <!--Text-->
                            <div class="md-form">
                                <input type="text" id="form0" class="form-control" name="firstName" required>
                                <label for=form0 class="">First name</label>
                            </div>
                            <div class="md-form">
                                <input type="text" id="form1" class="form-control" name="lastName" required>
                                <label for=form1 class="">Last name</label>
                            </div>
                            <div class="md-form">
                                <input type="email" id="form2" class="form-control" name="email" required>
                                <label for=form2 class="">Email Address</label>
                            </div>
                            <div class="md-form">
                                <input type="email" id="form3" class="form-control" required>
                                <label for="form3" class="">Confirm email</label>
                            </div>
                            <div class="md-form">
                                <input type="password" id="form5" class="form-control" name="password" required>
                                <label for="form5" class="">Password</label>
                            </div>
                            <div class="md-form">
                                <input type="password" id="form6" class="form-control"  required>
                                <label for="form6" class="">Confirm password</label>
                            </div>

                            <input class ="subBtn"type="submit" name ="register" value="Register">
                        </div>
                    </div>
                    <div class="col-md-3">
                    </div>
                </div>
            </div>
        </div>
    </main>
    <g:javascript src="bootstrap.js" />
    <g:javascript src="bootstrap.min.js"/>
    <g:javascript src="jquery-2.2.3.js"/>
    <g:javascript src="jquery-2.2.3.min.js"/>

</g:form>
</body>

</html>
