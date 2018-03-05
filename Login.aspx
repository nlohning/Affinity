<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style1 {
        width: 100%;
        margin-right: 0px;
    }
        .auto-style8 {
            text-align: right;
            width: 425px;
            font-weight: bold;
            height: 11px;
        }
        .auto-style7 {
        font-size: medium;
    }
        .auto-style9 {
            text-align: left;
            height: 11px;
        }
        .auto-style3 {
        text-align: right;
        height: 52px;
        width: 425px;
        font-weight: bold;
    }
    .auto-style4 {
        height: 52px;
        text-align: left;
    }
    .auto-style5 {
        text-align: left;
    }
    .auto-style2 {
        text-align: right;
        width: 425px;
        font-weight: bold;
        font-size: medium;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1" align="center">
    <tr>
        <td class="auto-style8">&nbsp;</td>
        <td class="auto-style9">
            <asp:Label ID="lblFail" runat="server" Font-Bold="True" ForeColor="#FF5050" Text="Incorrect Username or Password"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style8">
            <asp:Label ID="lblUsername" runat="server" Text="Enter Username:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style9">
            <asp:TextBox ID="txtUsername" runat="server" ValidationGroup="username"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfUsername" runat="server" ControlToValidate="txtUsername" Font-Bold="True" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style3">
            <asp:Label ID="lblPassword" runat="server" Text="Enter Password:" CssClass="auto-style7"></asp:Label>
        </td>
        <td class="auto-style4">
            <asp:TextBox ID="txtPassword" runat="server" ValidationGroup="password" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfPassword" runat="server" ControlToValidate="txtPassword" Font-Bold="True" ForeColor="Red">*Required Field</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style5">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Height="26px" OnClick="btnSubmit_Click" />
        </td>
    </tr>
</table>
</asp:Content>

