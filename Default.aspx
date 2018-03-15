<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style1 {
        width: 80%;
        margin: auto;
        overflow: hidden;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section id="showcase">
		<div class="container">
			<h1>Join us in your favorite game!</h1>
			<p>Our organization has many teams, with many more to come, in your favorite games.</p>
		</div>
	</section>

	<section id="news">
		<div class="auto-style1">
<<<<<<< HEAD
		    <asp:Label class="news" ID="lblSignUp" runat="server" Text="Sign up to receive emails about new tournaments and developments throughout Affinity!" Font-Size="Larger"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:Button class="SignUp" ID="SignUp" runat="server" Text="Sign Up!" BackColor="#44A1A0" Height="38px" OnClick="SignUp_Click" Width="96px" />
=======
>>>>>>> 9dad69891aed8cb4a4fa477418329057a4fc69be
		</div>
	</section>

	<section id="boxes">
		<div class="container">
			<div class="box">
				<img src="./images/leaguelogo.jpg">
				<h3>League of Legends</h3>
				<p>issa game</p>
			</div>
		</div>
	</section>

	
</asp:Content>

