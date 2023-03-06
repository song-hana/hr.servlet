<%@ page language='java' contentType='text/html; charset=utf-8' pageEncoding='utf-8'%>
<%@ page import='com.my.hr.service.LaborerService' %>
<%@ page import='com.my.hr.service.LaborerServiceImpl' %>
<%@ page import='com.my.hr.domain.Laborer' %>
<%@ page import='java.time.LocalDate' %>
<%@ page import='java.time.format.DateTimeFormatter' %>
<%!
	LaborerService laborerService = new LaborerServiceImpl();
%>
<%
	String laborerId = request.getParameter("laborerId");
	String laborerName = request.getParameter("laborerName");
	String hireDate = request.getParameter("hireDate");
	
	laborerService.fixLaborer(new Laborer(
			Integer.parseInt(laborerId),
			laborerName,
			LocalDate.parse(hireDate, DateTimeFormatter.ISO_DATE)));
%>
