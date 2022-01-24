<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pml.aspx.cs" Inherits="KursWeb.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="StyleSheet.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>

	<title>Databasemodellering</title>
	<meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
</head>
<body>
	<div class="top">
		<a href="Default.aspx">Databasemodellering</a>
	</div>

	<div class="sticky">
		<div class="nav">
			<a href="Default.aspx">Om kurset</a>
			<a class="active" href="Pml.aspx">Påmelding</a>
			<a href="Contact.aspx">Kontakt</a>

			<div style="float:right">
				<a href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
				<a href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
			</div>
		</div>
	</div>

<form action="action_page.php" style="border:1px solid #ccc">
	<div class="container">
		<h1 style="font-size: 32px; text-align: center">Det er __ plasser igjen!</h1>
		<p style= "font-size: 28px; text-align: center">Du må først logge inn for å melde deg på kurset.</p>

		<div class="login">
		<h1>Pålogging</h1>
		<hr/>

		<label for="brukernavn"><b>Brukernavn</b></label>
		<input type="text" placeholder="Oppgi brukernavn" name="brukernavn" required/>

		<label for="psw"><b>Passord</b></label>
		<input type="password" placeholder="Oppgi passord" name="psw" required/>

			<asp:Button ID="Button1" runat="server" Text="Button" />
		<button type="submit" class="btn">Logg inn</button>

		<p style="text-align: center">eller</p>
		<h1>Registrer ny bruker</h1>
		<p>Fyll ut dette skjemaet for å opprette en konto.</p>
			<hr/>

		<label for="email"><b>E-post</b></label>
		<input type="text" placeholder="Oppgi e-post" name="email" required="required"/>

		<label for="psw"><b>Passord</b></label>
		<input type="password" placeholder="Oppgi passord" name="psw" required/>
		
		<label for="psw-repeat"><b>Gjenta passord</b></label>
		<input type="password" placeholder="Gjenta passord" name="psw-repeat" required/>

		<label>
		<input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"/> Husk meg
		</label>

		<p>Ved å opprette en konto godtar du våre <a href="#" style="color:dodgerblue">Vilkår og Personvern</a>.</p>

			<div class="clearfix"> 
				<button type="submit" class="button">Registrer meg</button>
				<asp:Button ID="ButtonReg" runat="server" Text="Registrer meg" OnClick="ButtonReg_Click" />
			</div>
		</div>
	</div>
</form>

	<div class="footer"> 
		<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
		<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
	</div>
</body>
</html>
