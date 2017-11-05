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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.debug.js"></script>

</head>

<body>
<script>
    function generatePdf(){
        var doc = new jsPDF();
        doc.setFontSize(12)
        doc.text('Blockchain Receipt', 80, 10);
        doc.text('First Name: ${user.firstName}',10,30);
        doc.text('Last Name: ${user.lastName}',10,40);
        doc.text('Document Name: ${doc.documentName}',10,50);
        doc.text('Document SHA-256 Hash: ${doc.hashValue}',10,60);
        doc.text('Transaction Date: ${doc.addedToBlockchainDate}',10,70);
        doc.text('Transaction ID: ${doc.transactionId}',10,80);

        doc.save('receipt.pdf')
    }
    function printPage(){
        var prtContent = document.getElementById("printingField");
        var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
        WinPrint.document.write(prtContent.innerHTML);
        WinPrint.document.close();
        WinPrint.focus();
        WinPrint.print();
        WinPrint.close();
    }
</script>
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
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <!-- card 1 -->
                <div class="card">
                    <div class="card-block">
                        <div id="printingField">
                            <h1><b>Blockchain Receipt</b></h1><br>
                            <h3 style="display:inline">First Name: </h3><h4 style="display:inline;">${user.firstName}</h4><br>
                            <h3 style="display:inline">Last Name: </h3><h4 style="display:inline;">${user.lastName}</h4><br>
                            <h3 style="display:inline">Document Name: </h3><h4 style="display:inline;">${doc.documentName}</h4><br>
                            <h3 style="display:inline">Document SHA-256 Hash: </h3><h5 style="display:inline;">${doc.hashValue}</h5><br>
                            <h3 style="display:inline">Blockchain Transaction Date: </h3><h4 style="display:inline;">${doc.addedToBlockchainDate.format("yyyy.MM.dd 'at' hh:mm:ss")}</h4><br>
                            <h3 style="display:inline">Bitcoin Blockchain Transaction ID  : </h3><h5 style="display:inline;">${doc.transactionId}</h5><br>
                            <br>
                        </div>
                    </div>
                </div>
                <br>
            </div>
        </div>
    </div>
    <div style="text-align:center;">
    <button class="button btn-success" onclick="generatePdf()">Click to download PDF</button>
    <button class="button btn-success" onclick="printPage()">Click to print</button>
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
