<%-- 
    Document   : index
    Created on : Dec 9, 2011, 7:37:26 PM
    Author     : konanast
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>e-Shopping Cart</title>
 
        <script type="text/javascript">


var xmlhttp=new XMLHttpRequest();
function ajaxFunction() {
 
  if(xmlhttp) { 
    xmlhttp.open("POST","TestBean.jsp",true); 
    xmlhttp.onreadystatechange  = handleServerResponse;
    xmlhttp.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    xmlhttp.send('cafequa='+myForm.cafequa.value+'&sugarqua='+myForm.sugarqua.value+"&waterqua="+myForm.waterqua.value);

  }

}

function handleServerResponse() {
   if (xmlhttp.readyState == 4) {
     if(xmlhttp.status == 200) {
         var response =xmlhttp.responseText.split("|");
       document.myForm.cafeprice.value=response[1]; //Update the HTML Form element 
       document.myForm.sugarprice.value=response[2];
       document.myForm.waterprice.value=response[3];
       document.myForm.totalprice.value=response[4];
     }
     else {
        alert("Error during AJAX call. Please try again");
     }
   }
}
</script>
        
        
        
    </head>
    <body  align="center">
        <h1>e-Shopping Cart</h1>
        <% Cookie[] cookies = request.getCookies(); %>
        <form di="test" name="myForm">
            <table border="1" align="center" >
                <tr>
                    <td><b>Item</b></td>
                    <td><b>Price</b></td>
                    <td><b>Quantity</b></td>
                    <td><b>Total</b></td>
                </tr>
                <tr>
                    <td>Cafe</td>
                    <td>18.50</td>
                    <td><input type="text" name="cafequa" value="0.0"></td>
                    <td><input type="text" name="cafeprice" value="<%       
                                                                            boolean cafecookon=false;
                                                                            if(cookies!=null) {
                                                                                for(int i=0;i<cookies.length;i++) {
                                                                                        if ((cookies[i].getName()).equals("cafeprice")) {
                                                                                            out.println(cookies[i].getValue());
                                                                                            cafecookon=true;
                                                                                            break;
                                                                                        }
                                                                                        
                                                                                }
                                                                                
                                                                            }
                                                                            if(!cafecookon) 
                                                                                out.println(0.0); 
                                                                            
                                                                                   
                                                                    %>"></td>
                </tr>
                <tr>
                    <td>Sugar</td>
                    <td>6.95</td>
                    <td><input type="text" name="sugarqua" value="0.0"></td>
                    <td><input type="text" name="sugarprice" value="<%      boolean sugarcookon=false;
                                                                            if(cookies!=null) {
                                                                                for(int i=0;i<cookies.length;i++) {
                                                                                        if ((cookies[i].getName()).equals("sugarprice")) {
                                                                                            out.println(cookies[i].getValue());
                                                                                            sugarcookon=true;
                                                                                            break;
                                                                                        }
                                                                                       
                                                                                }
                                                                            }
                                                                            if(!sugarcookon) 
                                                                                out.println(0.0); 
                                                                                
                                                                    %>" ></td>
                </tr>
                <tr>
                    <td>Water</td>
                    <td>1.29</td>
                    <td><input type="text" name="waterqua" value="0.0"></td>
                    <td><input type="text" name="waterprice" value="<%      boolean watercookon=false;
                                                                            if(cookies!=null) {
                                                                                for(int i=0;i<cookies.length;i++) {
                                                                                        if ((cookies[i].getName()).equals("waterprice")) {
                                                                                            out.println(cookies[i].getValue());
                                                                                            watercookon=true;
                                                                                            break;
                                                                                        }
                                                                                        
                                                                                }
                                                                            }
                                                                            if(!watercookon) 
                                                                                out.println(0.0); 
                                                                            
                                                                    %>" ></td>
                </tr>
                <tr >
                    <td><b>Total</b></td>
                    <td></td>
                    <td></td>
                    <td bgcolor="#3399FF"><input type="text" name="totalprice" value="<%      boolean totalcookon=false;
                                                                            if(cookies!=null) {
                                                                                for(int i=0;i<cookies.length;i++) {
                                                                                        if ((cookies[i].getName()).equals("totalprice")) {
                                                                                            out.println(cookies[i].getValue());
                                                                                            totalcookon=true;
                                                                                            break;
                                                                                        }
                                                                                        
                                                                                }
                                                                            }
                                                                            if(!totalcookon) 
                                                                                out.println(0.0); 
                                                                          
                                                                    %>" > </td>
                </tr>
               
            </table> 
            <input type="button" value="Submit" onclick="javascript:ajaxFunction();" /><br>
        </form>
               
                
                <form>
                      <input type="button" value="Info" onclick="window.location.href='http://kostasa89.wordpress.com/'""/> 
                </form>
                
                
                <form>
                      <input type="button" value="Code" onclick="window.location.href='http://www.box.net/'"/> 
                </form>       
        
    </body>
</html>

