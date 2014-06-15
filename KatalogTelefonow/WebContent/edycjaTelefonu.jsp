<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="domain.Telefon" %>
<%@ page import="services.TelefonService" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="Stylesheet" type="text/css" href="CSS/katalogProduktow.css" />

<title>Katalog telefonów - [EDYCJA]</title>
</head>
<body>

<div class="box">
	Katalog telefonów
</div>  

<div class="panelPrzyciskow">
	<a href='telefonLista.jsp' class='buttonZmien'>Anuluj</a>	
</div>

<jsp:useBean id="telefonService" class="services.TelefonService" scope="application" /> 
	 
<% 
 	 	Telefon produkt = telefonService.getTelefonById(Integer.parseInt(request.getParameter("id")));
 	  	 	if(produkt==null) {
 	  	 		produkt = new Telefon(-1, "", "");
 	  	 	}
 	 %>    
    
<form class="produkt-form-container" method="post" action="zapiszTelefon.jsp">
	<div class="produkt-form-title"><h2>Edycja danych produktu</h2></div>
	<div class="produkt-form-title">Nazwa</div>
	<%
	out.print("<input class='produkt-form-field' type='text' name='nazwa' value='"); out.print(produkt.getNazwa()); out.print("' /><br />");
	 %>
	<%
	out.print("<input class='produkt-form-field' type='hidden' name='id' value='"); out.print(produkt.getId()); out.print("' /><br />");
	 %>
	<div class="produkt-form-title">Opis</div>
	<%
	out.print("<textarea class='produkt-textarea' name='opis'>"); out.print(produkt.getOpis()); out.print("</textarea>");
	 %>

	
	<div class="submit-container">
		<input class="submit-button" type="submit" value="Zapisz" />
	</div>
		
	</form>

</body>
</html>