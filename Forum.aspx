<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forum.aspx.cs" Inherits="Forum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            width: 100%;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table class="auto-style2">
        <tr>
            <td style="font-family: Arial, Helvetica, sans-serif; font-size: xx-large; font-weight: bold; color: #187CE4;">
                <br />
                <br />
                Looking for a forum? Tough luck, here&#39;s our discord for now.
                <br />
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="100px" ImageUrl="~/images/discord.png" OnClick="ImageButton1_Click" ToolTip="fuck you" />
                <br />
                <br />
                <br />
                <br />
                <br />
                
            </td>
        </tr>
    </table>

</asp:Content>

