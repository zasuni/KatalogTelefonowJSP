<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.Telefon" %>

 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="Stylesheet" type="text/css" href="CSS/katalogProduktow.css" />


<title>Katalog produktów</title>
 
</head>
<body>
	
<jsp:useBean id="telefonService" class="services.TelefonService" scope="application" /> 

<%
 	if ( request.getParameter("id") == null) {
          response.sendRedirect("telefonLista.jsp"); 
       }else{
       	int id = Integer.parseInt(request.getParameter("id"));    	
       	Telefon pr = telefonService.getTelefonById(id);    
       	telefonService.usunTelefon(pr);
       	response.sendRedirect("telefonLista.jsp");
       }
 %>

</body>
</html>