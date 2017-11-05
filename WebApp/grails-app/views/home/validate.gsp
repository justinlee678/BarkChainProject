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
                        <g:link controller="home" action="about" class="btn btn-y">About us</g:link>
                        <g:link controller="home" action="login" class="btn btn-y">Login</g:link>
                        <g:link controller="home" action="register" class="btn btn-y">Register</g:link>
                        <g:link controller="home" action="validate" class="btn btn-y-active">Validate</g:link>
                </span>
            </div>
        </nav>
    </header>

    <main>
        <br><br><br><br><br><br><br><br>

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
