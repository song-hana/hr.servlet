<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.service.LaborerService' %>
<%@ page import='com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>
<%!
	LaborerService laborerService = new LaborerServiceImpl();
%>
<%
	String laborerName = request.getParameter("laborerName");
	String hireDate = request.getParameter("hireDate");
	
	laborerService.addLaborer(laborerName,
			LocalDate.parse(hireDate, DateTimeFormatter.ISO_DATE));
%>
