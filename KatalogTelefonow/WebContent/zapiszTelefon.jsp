<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Telefon" %>
<%@ page import="services.TelefonService"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="Stylesheet" type="text/css" href="CSS/katalogProduktow.css" />


<title>Katalog telefonów</title>
 
</head>
<body>
	
	<jsp:useBean id="produkt" class="domain.Telefon" scope="session"></jsp:useBean>
	<jsp:setProperty property="*" name="produkt" />
	<jsp:useBean id="telefonService" class="services.TelefonService" scope="application" /> 

<%
 	Telefon pr = telefonService.getTelefonById(Integer.parseInt(request.getParameter("id")));
  	if(pr==null) {
  		telefonService.dodajNowy(produkt.getNazwa(), produkt.getOpis()); 		
  	} else {
  		pr.setNazwa(produkt.getNazwa());
  		pr.setOpis(produkt.getOpis());
  	}
  	response.sendRedirect("telefonLista.jsp");
 %>

</body>
</html>