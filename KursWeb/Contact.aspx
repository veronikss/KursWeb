<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="KursWeb.Contact1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="StyleSheet.css"/>
	<link rel="preconnect" href="https://fonts.googleapis.com"/>
	<link rel="preconnect" href="https://fonts.gstatic.com"/>
	<link href="https://fonts.googleapis.com/css2?family=Open+Sans&display=swap" rel="stylesheet"/>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous"/>

	<title>Kontakt</title>
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
				<a href="Pml.aspx">Påmelding</a>
				<a class="active" href="Contact.aspx">Kontakt</a>

				<div style="float:right">
					<a href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
					<a href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
				</div>
			</div>
		</div>

		<div class="container">
		<h1 style="font-size: 32px;">Kontakt</h1>
		<p style= "font-size: 24px;">Skriv inn en melding til lederen av kurset her:</p>

			<label for="fname">Brukernavn</label>
			<input type="text" id="fname" runat="server" name="firstname" placeholder="Skriv inn din brukernavn.."/>
			
			<label for="message">Melding</label>
			<textarea id="subject" name="subject" placeholder="Skriv inn det du lurer på.." style="height:100px"></textarea>
			<input type="submit" value="Send"/>
			</div>



		<div class="footer"> 
			<a style="color: #003366;font-size: 20px;" href="https://www.instagram.com/veronika_suniaieva/"><i class='fab fa-instagram'></i></a>
			<a style="color: #003366;font-size: 20px;" href="mailto:veronikasunyaeva@gmail.com"><i class="far fa-envelope"></i></a>
		</div>
</body>
</html>
