<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Login.aspx.vb" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>
    <script src="Scripts/bootstrap.js"></script>

    <style>
        .tableContent tr {

    height:35px;
    border:none;
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
    width:250px;
    /*border:solid;*/
}

.tableContent td:first-child {
    width:150px;
    /*text-align:right;*/
}
body{
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

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
        
          <!-- Container (Header) -->
        <div id="Header" class="page-content HeaderDiv" style="background-color: #cdf7f6;position: fixed; top: 0; left: 0; width: 100%;">
            <div class="row" style="background-color: #cdf7f6; width: 100%;">
                <div class="col-md-4" style="margin: auto; text-align: center; height: 100px">
                    <a href="#" onclick="return theFunction();">
                        <img src="Images/Pic1.gif" style="height: 100%" /></a>
                    <a href="#" onclick="return theFunction1();">
                        <img src="Images/Pic2.gif" style="height: 100%" /></a>
                    <a href="#" onclick="return theFunction2();">
                        <img src="Images/Pic3.gif" style="height: 100%" /></a>
                </div>
                <div class="col-md-4" style="margin: auto; height: 100px;">
                    <h4 style="text-align: center; font-weight: bolder">Grant Merciful Radhasoami, Thy Grace and Protection
                    </h4>
                    <h6 style="text-align: center;font-size:14px">राधास्वामी दयाल की दया, राधास्वामी सहाय
                    </h6>
                    <h4 style="text-align: center; font-weight: bolder">Radhasoami Satsang, Soami Bagh, Agra
                    </h4>
                </div>
                <div class="col-md-4" style="margin: auto; text-align: center; height: 100px">
                    <a href="#" onclick="return theFunction3();">
                        <img src="Images/Pict4.gif" style="height: 100%" /></a>
                    <a href="#" onclick="return theFunction4();">
                        <img src="Images/Pic5.gif" style="height: 100%" /></a>
                    <a href="#" onclick="return theFunction5();">
                        <img src="Images/Pic6.gif" style="height: 100%" /></a>
                </div>

            </div>
        </div>


        <div class="modal fade" id="imagemodal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <img src="Images/Pic1.gif" class="imagepreview" style="width: 90%;" />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="imagemodal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <img src="Images/Pic2.gif" class="imagepreview" style="width: 90%;" />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="imagemodal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <img src="Images/Pic3.gif" class="imagepreview" style="width: 90%;" />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="imagemodal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <img src="Images/Pic4.gif" class="imagepreview" style="width: 90%;" />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="imagemodal4" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <img src="Images/Pic5.gif" class="imagepreview" style="width: 90%;" />
                    </div>
                </div>
            </div>
        </div>
        <div class="modal fade" id="imagemodal5" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-body">
                        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only">Close</span></button>
                        <img src="Images/Pic6.gif" class="imagepreview" style="width: 90%;" />
                    </div>
                </div>
            </div>
        </div>

         <!-- Container (LinksRow) -->
        <div id="LinksRow" class="row LinksDiv" style="position: fixed">
            <div class="row"  style="cursor: pointer; left: 35px; position: sticky">
        <span>       <p onclick="functionlogin()" Font-Underline="true" style="color: darkblue; left: 30px;  position: fixed;">Login |</p><p onclick="functionregistration()"  style="color:darkblue;  left: 75px;  position: fixed;">Registration</p></span> 
            </div>
        </div>
        <center>
            <br />
            <div class="row" id="login" style="margin-top:200px; background-color:darkgrey;border-radius:25px;width:50%">
    <h1>Radhasoami</h1
                <h3>Welcome To RadhaSoami Faith Website</h3>
                <table class="tableContent">
                    <tr>
                        <td>
                             <asp:Label runat="server" ID="email" Text="Email-Address*:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtemail"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                           <td>
                             <asp:Label runat="server" ID="lblpass" Text="Password*:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="txtpass"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                <asp:Label runat="server" Visible="false" ForeColor="Red" ID="msginfo">
                </asp:Label>
                <br />
                <asp:Button runat="server" ID="btnlogin" Text="Login"  Class="a_button" CausesValidation="false"    />
             
    </div>
            <div class="row" id="registration" style="margin-top:180px;width:80%;background-color:darkgrey;border-radius:25px;display:none;">

            <h1>Registration</h1>
        <table class="tableContent">            
            <tr>
                <td>
                    <asp:label runat="server" ID="firstname" Text="FirstName*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtfirst"></asp:Textbox>
                </td>
                 <td>
                    <asp:label runat="server" ID="lastname" Text="LastName*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtlastname"></asp:Textbox>
                </td>
                 </tr>
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
                     <asp:label runat="server" ID="Label8" Text="Password*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="Textbox2" TextMode="Password" ></asp:Textbox>
                </td>
                 <td>
                     <asp:label runat="server" ID="Label9" Text="Confirm Password*:" ></asp:label>

                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtconfirm" TextMode="Password"></asp:Textbox>
                  
                </td>
                
            </tr>
            <tr>
                 <td>
                    <asp:label runat="server" ID="Label1" Text="Address:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtadd"></asp:Textbox>
                </td>
                 <td>
                    <asp:label runat="server" ID="Street" Text="Street:" ></asp:label>
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
                  
                         <asp:DropDownList runat="server" ID="ddlcountry" Width="150px" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
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
              
           
        </table>
                
            
                <center>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtmobile" ErrorMessage="Please Enter valid mobile Number"  
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
                 <asp:CompareValidator ID="CompareValidator1" runat="server" operator="Equal"
     ControlToValidate="txtconfirm"
     CssClass="ValidationError"
     ControlToCompare="txtpass"
     ErrorMessage="Password Not Matching" 
     ToolTip="Password must be the same" />
            

    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
     ErrorMessage="&laquo; (Required)" 
     ControlToValidate="txtconfirm"
     CssClass="ValidationError" Style="color:red"
     ToolTip="Compare Password is a Required field">
    </asp:RequiredFieldValidator>
                 <asp:RequiredFieldValidator runat="server" id="reqName" controltovalidate="txtfirst" ForeColor="red" errormessage="Please enter your First name!" />
                 <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator1" ForeColor="red" controltovalidate="txtlastname" errormessage="Please enter your Last name!" />
                      <asp:RequiredFieldValidator runat="server" id="RequiredFieldValidator3" ForeColor="red" InitialValue="Select" controltovalidate="ddlcountry" errormessage="Please select  Country!" />
               
                    </center>
               <asp:Button  runat="server" ID="btnregist" Text="Register" class="a_button" CausesValidation="false"   /><br />
           
           <asp:Label runat="server" Text="Forgot Password" Style="color:darkblue;" Font-Underline="true" ></asp:Label>
                 </div>
            <script>
                function functionlogin()
                {
                    document.getElementById("registration").style.display="none"
                    document.getElementById("login").style.display="block"
                }
                function functionregistration() {
                    document.getElementById("login").style.display = "none"
                    document.getElementById("registration").style.display = "block"
                }
            </script>
    </form>
</body>
</html>
