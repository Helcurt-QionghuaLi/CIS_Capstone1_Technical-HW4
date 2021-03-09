<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PageTwo.aspx.cs" Inherits="PageTwo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
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
            text-align:center;
        }

        img{
            width:53.33%;
            margin-left: 20rem;
        }

        .text{

            text-align: justify;
            font-family: Verdana;
            text-align:center;
        }

        span{
            color:red;
            font-family:'Times New Roman', Times, serif;
        }

        </style>
<body>
    <form id="form1" runat="server">
             <ul class="progressbar">
             <li>Default Page</li>
             <li class="active">PageTwo</li>
             <li>PageThree</li>
         </ul> 
        <h1>Welcome to The Customer Service</h1>
         <div class="description-container">
              <img src="pics/2.jpg" alt=""/>
             <div class="text">
        <span>WE DO <br />
                *Place Medication Orders<br />
                *Recevie Email notification Status<br />
                *Begin Processing
        </span>
        <p>Because we love animals (and people!) we give<br /> 
            a portion of our profits to Austin Pets Alive, a<br />
            shelter that works to save pets at risk of euthanasia,<br />
            and The Dog Alliance, a nonprofit that makes connections <br />
            between dogs and people to provide therapy for PTSD, <br />
            stress, and learning disabilities in children.</p>
            </div>
            </div>
 
    </form>
</body>
</html>
