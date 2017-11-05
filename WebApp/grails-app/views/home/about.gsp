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
<header>

    <nav class="navbar fixed-top scrolling-navbar navbar-expand-lg navbar-dark homeBar">
        <div class=" spaced ">
            <span>
                <g:link class="navbar-brand navtitle brandtxt" controller="home">
                    <g:img dir="images/res" file="logo6.png" class="img-logo"/><span class="downTxt"> <g:img dir="images/res" file="barkchain.JPG"/></span>
                </g:link>
            </span>
            <span class="centBtn">
                <g:link controller="home" action="about" class="btn btn-y-active">About us</g:link>
                <g:link controller="home" action="login" class="btn btn-y">Login</g:link>
                <g:link controller="home" action="register" class="btn btn-y">Register</g:link>
                <g:link controller="home" action="validate" class="btn btn-y">Validate</g:link>
            </span>
        </div>
    </nav>
</header>

<main>
    <br><br><br><br><br><br><br><br>
    <div class="container ">
        <div class="row">
            <div class="col-md-6">
                <!-- card 1 -->
                <div class="card">
                    <div class="card-block">
                        <h1>What role do we play when it comes to pets? </h1><br>
                        <h3>
                            BarkChain is part of <b>the new frontier </b>in record keeping. <br> <br>
                            With our services, Breeders and shelters can now issue documents and receipts that can never be tampered with thanks to groundbreaking <b>blockchain</b> technology. <br> <br>
                            In a market where pets range from $300 to $11,000 based on breed alone, immutable records are invaluable.
                        </h3>

                        <br>
                    </div>
                </div>
                <br>
                <!-- card 2 -->
                <div class="card">
                    <div class="view overlay hm-white-slight container lefttext">
                        <g:img dir="images/res" file="diagram.png" class="paddedIMG img-fluid" alt=""/>
                        <a>
                            <div class="mask"></div>
                        </a>
                        <br>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <!-- card 2 -->
                <div class="card">
                    <div class="view overlay hm-white-slight">
                        <g:img dir="images/res" file="dogs5.jpg" class="paddedIMG img-fluid" alt=""/>
                        <a>
                            <div class="mask"></div>
                        </a>
                    </div>
                </div>
                <br>
                <div class="card">
                    <div class="card-block">
                        <h1>What is blockchain and why is it so powerful? </h1><br>
                        <h3>
                            Blockchain is a distributed database, meaning every participating computer must record every transaction made between users.<br><br> When you upload a document to BarkChain (be it a <b>certificate of pedigree, vaccination</b>, and so on), the digital fingerprint (called <b>hash</b>) of the document will be stored on every connected computer's copy of the blockchain.
                        </h3>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="container lefttext">
            <div class="col-lg-12">
                <br><br>
            <h1><b>
                How does it work?</b>
            </h1>
            <br>
                <div class="card">
                    <div class="view overlay hm-white-slight">
                        <g:img dir="images/res" file="diagram2.PNG" class="img-fluid" alt="" style="width: 1200px; height: 720px;"/>
                        <a>
                            <div class="mask"></div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
