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
                    String cafeprice = Double.toString(cafe.getCafequa()*18.50);
                    Cookie cafepricecookie = new Cookie("cafeprice",cafeprice);
                    cafepricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(cafepricecookie);
                    out.println("|"+cafe.getCafequa()*18.50);
            %>
            
            
                    
            <% 
                    double xsugar;
                    String sugarqua = request.getParameter("sugarqua");
                    xsugar = Double.parseDouble(sugarqua);
                    Sugar sugar = new Sugar();
                    sugar.setSugarqua(xsugar);
                    String sugarprice = Double.toString(sugar.getSugarqua()*6.95);
                    Cookie sugarpricecookie = new Cookie("sugarprice",sugarprice);
                    sugarpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(sugarpricecookie);
                    out.println("|"+sugar.getSugarqua()*6.95);
            %>
            <%
                    double xwater;
                    String waterqua = request.getParameter("waterqua");
                    xwater = Double.parseDouble(waterqua);
                    Water water = new Water();
                    water.setWaterqua(xwater);
                    String waterprice = Double.toString(water.getWaterqua()*1.29);
                    Cookie waterpricecookie = new Cookie("waterprice",waterprice);
                    waterpricecookie.setMaxAge(60*60*60*60);
                    response.addCookie(waterpricecookie);
                    out.println("|"+water.getWaterqua()*1.29);
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
