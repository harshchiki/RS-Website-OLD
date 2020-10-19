<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SaveDeliveryAddress.aspx.vb" Inherits="SaveDeliveryAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Delivery Address</title>
   <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <style>
        .tableContent tr {
            margin-left:5px;
            height: 35px;
            border: none;
        }

        .a_button {
            margin: 20px;
            height: 40px;
            width: 150px;
            font-size: 18px;
            border-radius: 5px;
            font-family: Arial, Helvetica, sans-serif;
        }

        .HeaderDiv {
            /*height: 150px;*/
            /*background-color: #ade2ff;*/
            left: 0;
            z-index: 98;
            margin-left: 0px;
            margin-right: 0px;
            height: 125px;
            overflow-y: hidden;
        }

        .img-gallery:hover {
            background-color: white;
            border: 1px solid gray;
            -webkit-transform: scale(2);
            -moz-transform: scale(2);
            -o-transform: scale(2);
            transform: scale(2);
            z-index: 10;
            -webkit-transition: all 0.5s ease-out;
            -moz-transition: all 0.5s ease-out;
            -o-transition: all 0.5s ease-out;
            transition: all 0.5s ease-out;
            align-items: center;
        }

        .tableContent td {
            text-align: left;
            width: 250px;
            /*border:solid;*/
        }

            .tableContent td:first-child {
                width: 150px;
                /*text-align:right;*/
            }

        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .LinksDiv {
            /*z-index: 95;*/
            height: 30px;
            text-align: right;
            background-color: #7F7F7F;
            width: 100%;
            margin-top: 100px;
            /*top: 125px;*/
            right: 15px;
            z-index: 100;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div role="navigation" class="row container-fluid" id="pageBanner">
            <img src="Images/header.png" class="img-responsive HeaderDiv" />
        </div>
        <asp:ScriptManager runat ="server" ID="script1"></asp:ScriptManager>
        <asp:UpdatePanel  runat ="server" >
            <ContentTemplate >
     <div class="row" id="registration" style="margin-left:45px; margin-top:50px;width:80%;background-color:darkgrey;border-radius:25px;">
            <h1>Book Ordering</h1>
        <table class="tableContent">            
            <tr>
                 <td>
                     <asp:label runat="server" ID="lblemail" Text="Email*:" ></asp:label>
                </td>
                  <td>
                    <asp:Textbox runat="server" ID="Textbox1" TextMode="Email" ></asp:Textbox>
                </td>
                  <td>
                    <asp:label runat="server" ID="Label7" Text="Mobile*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtmobile" ></asp:Textbox>
                </td>
            </tr>
          
            
            <tr>
                 <td>
                    <asp:label runat="server" ID="Label1" Text="Address*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtadd"></asp:Textbox>
                </td>
                 <td>
                    <asp:label runat="server" ID="Street" Text="Street*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtstreet"></asp:Textbox>
                </td>
                 </tr>
            <tr>
                 <td>
                    <asp:label runat="server" ID="Label3" Text="Locality:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtlocal"></asp:Textbox>
                </td>
               
                 <td>
                    <asp:label runat="server" ID="Label4" Text="Village:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtvillage"></asp:Textbox>
                </td>
                 </tr>
            <tr>
                   <td>
                       <asp:Label runat="server" ID="lblcount" Text="Country:"></asp:Label>
                   </td>
                     <td>
                  
                         <asp:DropDownList runat="server" ID="ddlcountry" Width="150px" AppendDataBoundItems="true" ></asp:DropDownList>
                </td>
               
                  <td>
                    <asp:label runat="server" ID="Label6" Text="State:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtstate"></asp:Textbox>
                </td>
                 </tr>
            <tr>
                  <td>
                    <asp:label runat="server" ID="Label2" Text="Pincode" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtpin"></asp:Textbox>
                </td>
                </tr>
                <tr>
                  <td>
                    <asp:label runat="server" ID="lbltransact" Text="Transaction Id" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txttran"></asp:Textbox>
                </td>
                </tr>
        </table>
                         <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtmobile" ErrorMessage="Please Enter valid mobile Number"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                    </center>
                <asp:Label runat ="server" ID ="lblerror" ForeColor="Red" ></asp:Label>
               <asp:Button  runat="server" ID="btnregist" Text="Submit" class="a_button" CausesValidation="false"   /><br />
         <asp:label runat="server" Style="display:none;"  ID="lblbook" ></asp:label>
           </div>    
                 </ContentTemplate>
        </asp:UpdatePanel>
                <center>

    </form>
</body>
</html>
