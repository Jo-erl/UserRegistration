<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="userregistration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration by Joel Anang.</title>
     <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet" />
     <style type="text/css">
        body {
            background-image: url('Images/1.jpg');
            background-size: cover;
            font-family: 'Poppins', sans-serif;
        }
         #form1 {
             background-color: white;
             border-radius: 20px;
             padding: 0;
             width: 50%;
             margin: 0 auto;
             max-width: 500px;
             background-color: #fff;
             padding: 30px;
             border-radius: 10px;
             opacity: 0.9;
             margin-top: 10%;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <tr>
                    <td>Full Name</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server" placeholder="Enter your full name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                        <asp:TextBox ID="txtAdd" runat="server" placeholder="Enter your address"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Gender</td>
                    <td>
                        <asp:RadioButton GroupName="user" ID="RadioButton1" runat="server" Text="Male" OnCheckedChanged="RadioButton1_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton2" runat="server" Text="Female" OnCheckedChanged="RadioButton2_CheckedChanged" /><br />
                        <asp:RadioButton GroupName="user" ID="RadioButton3" runat="server" Text="Others" OnCheckedChanged="RadioButton3_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td>Phone</td>
                    <td>
                        <asp:TextBox ID="txtPhone" runat="server" placeholder="+233 24 3040 369"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="example@email.com" TextMode="Email"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Username</td>
                    <td>
                        <asp:TextBox ID="txtUser" runat="server" placeholder="Enter username"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" placeholder="********" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:Button ID="btnReg" runat="server" Text="Register" OnClick="btnReg_Click" /></td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
