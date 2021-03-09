<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageThree.aspx.cs" Inherits="PageThree" %>

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
       <ul class="progressbar">
             <li>Default Page</li>
             <li>PageTwo</li>
             <li class="active">PageThree</li>
         </ul> 
        <h1>Welcome to the Dispensing Department</h1>
         <div class="description-container">
              <img src="pics/3.jpg" alt=""/>
             <div class="text">
        <h3>*Begin Processing</h3>
        <h3>*Possibility of Replacing Orders</h3>
        <h3>*Updated Final Prescription</h3>
        <h3>*Receive Final Confirmation Email</h3>
        <h3>*Ship Medication</h3>
        <p>Our delicious, vet-recommended chews help<br /> 
            support your dog's health using naturally <br />
            derived ingredients, backed by research and <br />
            clinical studies, and contain ZERO artificial <br />
            preservatives, corn, wheat, or GMOs.</p>
            </div>
            </div>
    </form>
</body>
</html>
