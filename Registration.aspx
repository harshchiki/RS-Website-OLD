<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Registration.aspx.vb" Inherits="Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/jquery-3.3.1.min.js"></script>


    <style>
        body{
    font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

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
.tableContent td {
    text-align: left;
    width:250px;
    /*border:solid;*/
}

.tableContent td:first-child {
    width:150px;
    /*text-align:right;*/
}
    </style>
</head>
    
<body>
    <form id="form1" runat="server">
        
     
        <center>
            <br />
            <div class="row" id="registration" style="background-color:darkgrey;border-radius:25px">

            <h1>Registration</h1>
        <table class="tableContent">            
            <tr>
                <td>
                    <asp:label runat="server" ID="firstname" Text="FirstName:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtfirst"></asp:Textbox>
                </td>
                 <td>
                    <asp:label runat="server" ID="lastname" Text="LastName:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtlastname"></asp:Textbox>
                </td>
                 </tr>
            <tr>
                 <td>
                     <asp:label runat="server" ID="lblemail" Text="Email:" ></asp:label>
                </td>
                  <td>
                    <asp:Textbox runat="server" ID="txtemail" TextMode="Email" ></asp:Textbox>
                </td>
                  <td>
                    <asp:label runat="server" ID="Label7" Text="Mobile:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtmobile" ></asp:Textbox>
                </td>
            </tr>
            <tr>
                <td>
                     <asp:label runat="server" ID="Label8" Text="Password:" ></asp:label>
                </td>
                <td>
                    <asp:Textbox runat="server" ID="txtpass" TextMode="Password" ></asp:Textbox>
                </td>
                 <td>
                     <asp:label runat="server" ID="Label9" Text="Confirm Password:" ></asp:label>

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
                  
                         <asp:DropDownList runat="server" ID="ddlcountry" Width="170px" AppendDataBoundItems="true" AutoPostBack="true"></asp:DropDownList>
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
                
            <br />
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
                <br />
            <asp:Button runat="server" ID="btn_reg" Text="Register" class="a_button"  />
                <asp:Label runat="server" Text="Forgot Password" ></asp:Label><asp:Label runat="server" Text="" ></asp:Label>
                 </div> 
         </center>
                
            
    </form>
</body>
</html>
