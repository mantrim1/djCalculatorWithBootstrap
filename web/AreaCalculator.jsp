<%-- 
    Document   : AreaCalculator
    Created on : Sep 5, 2015, 2:06:04 PM
    Author     : Mark
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@ taglib prefix="fmt" 
           uri="http://java.sun.com/jsp/jstl/fmt" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Area Calculator</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
        <style>
            .input-group{
                margin: 20px;
                text-shadow: 2px 2px 2px #8585AD;
                height: 10%;
            }
            h1{
                text-shadow: 2px 2px 2px #8585AD;
            }
            .btn{
                box-shadow: 2px 2px 2px #8585AD;
            }
            .well{
              height:400px;
              margin:5px;
            }
            .txt{
                height:30px;
            }
            .results{
                color:purple;
                text-shadow: 2px 2px 2px #808080;
                
            }
            .img{
               height:150px;
               width:300px;
               box-shadow: 2px 2px 2px gray;
               border: 1px solid #009900;
            }
            .results{
                text-align: center;
            }
        </style>
    </head>
    <body>
        
        <div id="dialog" title="Results" class="results">
            <div><h3>The area is:
             <p class="results">
                 <fmt:formatNumber type="number" 
            maxIntegerDigits="3" value="${rectangleMessage}" />
             
         </p>
         <p class="results">
              <fmt:formatNumber type="number" 
            maxIntegerDigits="3" value="${triangleMessage}" />
            
         </p>
          <p class="results">
                <fmt:formatNumber type="number" 
            maxIntegerDigits="3" value="${circleMessage}" />
             
         </p>
         </div>
        </div>
         <div id="tabs">
             <ul>
                 <li><a href="#tabs-1">Rectangle</a></li>
                 <li><a href="#tabs-2">Triangle</a></li>
                 <li><a href="#tabs-3">Circle</a></li>
             </ul>
     
         <div id="tabs-1" class="well col-sm-3">
         <h1>Area Of Rectangle</h1>
         <a href="http://www.mathplanet.com/media/35322/rectangle03.png" target="_blank" >
             <img src="Content/rectangle.png" class="img" title="Click for Source: http://www.mathplanet.com/media/35322/rectangle03.png" />
         </a>
        <form  method="POST" action="AreaCalculatorController?shape=rectangle"
               name="form1" id="form1" >
        <div class="input-group">
        <span class="input-group-addon" >Height </span>
        <input class="txt" required="true" id="inputHeight" type="number" name="inputHeight" />
        </div>
        
         <div class="input-group">
        <span class="input-group-addon" >Width </span>
        <input class="txt" required="true" id="inputWidth" type="number" name="inputWidth" />
         </div>
        <input class="btn btn-success calculate" type="submit" value="Calculate" name="submit" id="submit"/>
        </form>
        </div>
             
             
         <div id="tabs-2" class="well col-sm-3">
         <h1>Area Of Triangle</h1>
         
          <a href="http://image.tutorvista.com/cms/images/38/altitude-of-a-triangle.jpg" target="_blank" >
             <img src="Content/altitude-of-a-triangle.jpg" class="img" title="Click for Source: http://image.tutorvista.com/cms/images/38/altitude-of-a-triangle.jpg" />
         </a>
         
        <form  method="POST" action="AreaCalculatorController?shape=triangle"
               name="form1" id="form1" >
       <div class="input-group">
        <span class="input-group-addon" >Height </span>
        <input class="txt" required="true" id="inputHeight" type="number" name="inputHeight" />
        </div>
        
         <div class="input-group">
        <span class="input-group-addon" >Width </span>
        <input class="txt" required="true" id="inputWidth" type="number" name="inputWidth" />
         </div>
            
        <input class="btn btn-success calculate" type="submit" value="Calculate" name="submit" id="submit"/>
        </form>
         </div>
             
             
         <div id="tabs-3" class="well col-sm-3">
         <h1>Area Of Circle</h1>
         
         <a href="https://vt-s3-files.s3.amazonaws.com/uploads/problem_question_image/image/1518/circle_with_radius.png" target="_blank" >
             <img src="Content/circle_with_radius.png" class="img" title="Click for Source: https://vt-s3-files.s3.amazonaws.com/uploads/problem_question_image/image/1518/circle_with_radius.png" />
         </a>
         
        <form  method="POST" action="AreaCalculatorController?shape=circle"
               name="form1" id="form1" >
       <div class="input-group">
        <span class="input-group-addon" >Radius </span> 
        <input class="txt" required="true" id="inputRadius" type="number" name="inputRadius" />
       </div>
            
        <input class="btn btn-success calculate" type="submit" value="Calculate" name="submit" id="submit"/>
        </form>
         </div>
             
             
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
         <script typ="javascript">
         $(function(){
             $("#tabs").tabs();
            $("#dialog").dialog({
                position:{ 
                    my: "top center", 
                    at: "center top", 
                    of: window 
                }
            });
         });    
         </script>
    </body>
    
</html>
