<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FIrstContentPage.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>

        .container{
            width:100%;
        }

        .progressbar{
            counter-reset:step;
        }

        .progressbar li{
            list-style-type:none;
            float:left;
            width:33.33%;
            position:relative;
            text-align:center;
        }

        .progressbar li:before{
            content: counter(step);
            counter-increment:step;
            width:30px;
            height:30px;
            line-height:30px;
            border: 1px solid #ddd;
            display: block;
            text-align:center;
            margin:0 auto 10px auto;
            border-radius:50%;
            background-color:white;
        }

        .progressbar li:after{
            content:'';
            position:absolute;
            width:100%;
            height:1px;
            background-color:#ddd;
            top:15px;
            left:-50%;
            z-index:-1;
        }

        .progressbar li:first-child:after{
            content:none;
        }

        .progressbar li.active{
            color:green;
        }

        .progressbar li.active:before{
            border-color:green;
        }

        .progressbar li.active + li:after{
            background-color:green;
        }

        h1{
            padding-left:8rem;
            padding-top:5rem;
        }

        img{
            float:left;
            padding:0 10px 0 0;
        }

        .text{

            text-align: justify;
            font-family: Verdana;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container">
     </div>
    </form>
         <ul class="progressbar">
             <li class="active">Default Page</li>
             <li>PageTwo</li>
             <li>PageThree</li>
         </ul> 
             <h1>Welcome to the Pet Vet</h1>
         <div class="description-container">
              <img src="pics/1.jpg" alt=""/>
             <div class="text">
        <h3>Place Medication Orders</h3>
        <h3>Possibility of Replacing Orders</h3>
        <p>The best way to ensure your pet lives a healthy, <br />
            happy life is to take a proactive approach to their<br /> 
            health and wellness. Every animal has unique needs,<br />
            so we offer a variety of ways for you to get necessary, <br />
            non-emergency care that’s right for you and right for them.</p>
            </div>
            </div>
     </body>
</html>
