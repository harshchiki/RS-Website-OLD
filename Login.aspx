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
        .field-icon {
  float: right;
  margin-left: -25px;
  margin-top: -25px;
  position: relative;
  z-index: 2;
}

.container{
  padding-top:50px;
  margin: auto;
}
        .tableContent tr {
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
             left: 0;
    z-index: 98;
    margin-left: 0px;
    margin-right: 0px;
    overflow: hidden;
    background: linear-gradient(#7a7a7a,#ffffff);
    width: 100%;
    top: 0;
    left: 0;
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
<body style ="overflow :hidden ">

    <form id="form1" runat="server">

        <!-- Container (Header) -->


        <div role="navigation" class="row container-fluid" id="pageBanner">
            <img src="Images/header.png" class="img-responsive HeaderDiv" />
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
          <asp:ScriptManager runat ="server" ID ="script1"></asp:ScriptManager>
                <asp:UpdatePanel runat ="server" ID ="update1">
                    <ContentTemplate >
        <center>
            <br />
           
            <div class="row" id="login" style="margin-top:100px; background-color:darkgrey;border-radius:25px;width:50%;height :300px">
    <h1>Radhasoami</h1>
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
                                   <asp:Textbox runat ="server"  type="password" placeholder="Password" ID="txtpass" class="masked" name="password" />
<button type="button" id="eye">
    <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />
</button>
                    </tr>
                        </table>
                <asp:Label runat="server" Visible="false" ForeColor="Red" ID="msginfo">
                </asp:Label>
             <br />
                <asp:Button runat="server" ID="btnlogin" Text="Login"  Class="a_button" CausesValidation="false"    />
          <table class ="tableContent" ><tr>
              <td style ="width:70px"><a onclick="functionregistration()"  style="color:darkblue;cursor:pointer ; position: fixed;" >New User</a> </td>
              <td style ="width:70px"><a onclick="functionforgotpassword()"  style="color:darkblue;cursor:pointer ; position: fixed;" >|&nbsp; Forgot Password</a></td></tr></table>  
              </div>
                </center>
        <center>
            <div class="row" id="registration" style="margin-left:35px; margin-top:50px;width:80%;background-color:darkgrey;border-radius:25px;display:none;">
               
            <h3>Registration</h3>
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
                    <asp:Textbox runat="server" ID="txtmobile" TextMode="Phone" ></asp:Textbox>
                    
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
                       <asp:Label runat="server" ID="lblcount" Text="Country*:"></asp:Label>
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
                    <asp:label runat="server" ID="Label2" Text="Pincode*:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtpin"></asp:Textbox>
                </td>
               
               
                </tr>
              
           
        </table>
               
                
                <center>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"  
ControlToValidate="txtmobile" ErrorMessage="Please Enter valid mobile Number" ForeColor="Red" 
ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator> 
        
                    </center>
                <asp:Label runat ="server" ID ="lblerror" ForeColor="Red" ></asp:Label>
               <asp:Button  runat="server" ID="btnregist" Text="Register" class="a_button" CausesValidation="false"   /><br />
          
                 </div>
            </center> 
                        <center>
            <div class="row" id="forgotpassword" style="margin-top:100px; background-color:darkgrey;border-radius:25px;width:50%;height :300px;display:none">
    <h1>Radhasoami</h1>
                <h3>Welcome To RadhaSoami Faith Website</h3>
               
                <table class="tableContent">
                    <tr>
                        <td>
                             <asp:Label runat="server" ID="Label5" Text="Email-Address*:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox runat="server" ID="TextBox3"></asp:TextBox>
                        </td>
                    </tr>
                    
                </table>
                <asp:Label runat="server" Visible="false" ForeColor="Red" ID="Label11">
                </asp:Label>
             <br />
                <asp:Button runat="server" ID="btn_forgotpassword" Text="Request Password"  Class="a_button" style="width:200px" CausesValidation="false"    />
 
                </div>
                </center>
        <center>
                 </div>
                            </center>
              </ContentTemplate>
                </asp:UpdatePanel>
          
        <script>
            $(".toggle-password").click(function () {

                $(this).toggleClass("fa-eye fa-eye-slash");
                var input = $($(this).attr("toggle"));
                if (input.attr("type") == "password") {
                    input.attr("type", "text");
                } else {
                    input.attr("type", "password");
                }
            });
           
            function functionlogin() {
                document.getElementById("registration").style.display = "none"
                document.getElementById("forgotpassword").style.display = "none"
                document.getElementById("login").style.display = "block"
            }
            function functionregistration() {
                document.getElementById("login").style.display = "none"
                document.getElementById("forgotpassword").style.display = "none"
                document.getElementById("registration").style.display = "block"
            }
            function functionforgotpassword() {
                document.getElementById("login").style.display = "none"
                document.getElementById("forgotpassword").style.display = "block"
                document.getElementById("registration").style.display = "none"

            }
            
            function show() {
                var p = document.getElementById('txtpass');
                p.setAttribute('type', 'text');
            }

            function hide() {
                var p = document.getElementById('txtpass');
                p.setAttribute('type', 'password');
            }

            var pwShown = 0;

            document.getElementById("eye").addEventListener("click", function () {
                if (pwShown == 0) {
                    pwShown = 1;
                    show();
                } else {
                    pwShown = 0;
                    hide();
                }
            }, false);
        </script>
    </form>
</body>
</html>
