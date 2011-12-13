<%-- 
    Document   : TestBean
    Created on : Dec 10, 2011, 5:37:40 AM
    Author     : konanast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="foo.*" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Shopping Cart</title>
    </head>
    <body align="center">
        <h1>e-Shopping Cart</h1>
      
           
 
            
            
            
            <% 
                    double xcafe;
                    String cafequa = request.getParameter("cafequa");
                    xcafe= Double.parseDouble(cafequa);
                    Cafe cafe = new Cafe();
                    cafe.setCafequa(xcafe);
                    String cafeprice = application.getInitParameter("cafeprice");
                    Double cafepricedouble = Double.parseDouble(cafeprice);
                    String totalcafeprice = Double.toString(cafe.getCafequa()*cafepricedouble);
                    Cookie cafepricecookie = new Cookie("cafeprice",totalcafeprice);
                    cafepricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(cafepricecookie);
                    out.println("|"+totalcafeprice);
            %>
            
            
                    
            <% 
                    double xsugar;
                    String sugarqua = request.getParameter("sugarqua");
                    xsugar = Double.parseDouble(sugarqua);
                    Sugar sugar = new Sugar();
                    sugar.setSugarqua(xsugar);
                    String sugarprice = application.getInitParameter("sugarprice");
                    Double sugarpricedouble = Double.parseDouble(sugarprice);
                    String totalsugarprice = Double.toString(sugar.getSugarqua()*sugarpricedouble);
                    Cookie sugarpricecookie = new Cookie("sugarprice",totalsugarprice);
                    sugarpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(sugarpricecookie);
                    out.println("|"+totalsugarprice);
            %>
            <%
                    double xwater;
                    String waterqua = request.getParameter("waterqua");
                    xwater = Double.parseDouble(waterqua);
                    Water water = new Water();
                    water.setWaterqua(xwater);
                    String waterprice = application.getInitParameter("waterprice");
                    Double waterpricedouble = Double.parseDouble(waterprice);
                    String totalwaterprice = Double.toString(water.getWaterqua()*waterpricedouble);
                    Cookie waterpricecookie = new Cookie("waterprice",totalwaterprice);
                    waterpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(waterpricecookie);
                    out.println("|"+totalwaterprice);
            %>
            <%      
                    double total;
                    total = cafe.getCafequa()*18.50 + sugar.getSugarqua()*6.95 + water.getWaterqua()*1.29;
                    String totalprice = Double.toString(total);
                    Cookie totalpricecookie = new Cookie("totalprice",totalprice);
                    totalpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(totalpricecookie);
                    out.println("|"+total+"|");
            %>
    </body>
</html>
