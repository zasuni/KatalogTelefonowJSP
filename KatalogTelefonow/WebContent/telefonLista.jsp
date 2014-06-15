<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Telefon" %>

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="Stylesheet" type="text/css" href="CSS/katalogTelefonow.css" />


<title>Katalog produktów</title>
</head>
<body>
	
	 <jsp:useBean id="telefonService" class="services.TelefonService" scope="application" /> 
 
<div class="box">
	Katalog telefonów
</div>

<div class="panelPrzyciskow">
	<a href='edycjaTelefonu.jsp?id=-1' class='buttonZmien'>Nowy telefon</a>	
</div>

<div class="tabelka" >	
	<table>
		<tr>
			<td>Marka / Typ</td>
			<td>Opis</td>
			<td>Opcje</td>
		</tr>
		
		<%
					for(Telefon p : telefonService.getTelefony()){
							out.print("<tr>");
							out.print("<td>"); out.print(p.getNazwa()); out.print("</td>");
							out.print("<td>"); out.print(p.getOpis()); out.print("</td>");
							out.print("<td width='200'>"); out.print(" <a href='edycjaTelefonu.jsp?id="); out.print(p.getId()); out.print("' class='buttonZmien'>Edycja</a>"); out.print(" <a href='usunTelefon.jsp?id="); out.print(p.getId()); out.print("' class='buttonUsun'>Usuń</a>"); out.print("</td>");
							out.print("</tr>");
								}
				%>
			
	</table>
</div>

</body>
</html>