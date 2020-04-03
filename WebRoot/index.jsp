<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<title>servlet实现加法器</title>
	<link  href="static/dist/css/bootstrap.min.css" rel="stylesheet">
	
  </head>
  
  <body>
  	<script  src="static/dist/js/jquery-3.1.1.min.js"></script>  	
	<script  src="static/dist/js/bootstrap.min.js"></script>
	
	<script  src="static/dist/js/myjs.js"></script>    		
   	
   	<div class="container">
   		<form id="Calculationid" action="Calculation" method="post">
  	
    			<table class="table-responsive">
  				<tbody>
    				<tr>
    					<td><input id="t1" name="text1" type="text" class="form-control" style="width:80px" ></td>
    					<td><input id="t2" name="text2" type="text" class="form-control" style="width:80px" ></td>
    					<td><input id="t3" name="text3" type="text" class="form-control" style="width:80px" ></td>
    					<td><input id="t4" name="text4" type="text" class="form-control" style="width:80px" placeholder="result"></td>
					</tr>
    				<tr>
      					<td><button id="b7" value="7" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">7</button></td>
      					<td><button id="b8" value="8" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">8</button></td>
      					<td><button id="b9" value="9" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">9</button></td>
      					<td><button id="s4" value="/" type="button" class="btn btn-info" style="width:80px" onclick="sign(this.id)">/</button></td>
    				</tr>
    				<tr>
      					<td><button id="b4" value="4" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">4</button></td>
      					<td><button id="b5" value="5" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">5</button></td>
      					<td><button id="b6" value="6" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">6</button></td>
      					<td><button id="s3" value="*" type="button" class="btn btn-info" style="width:80px" onclick="sign(this.id)">*</button></td>
    				</tr>
    				<tr>
      					<td><button id="b1" value="1" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">1</button></td>
      					<td><button id="b2" value="2" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">2</button></td>
      					<td><button id="b3" value="3" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">3</button></td>
      					<td><button id="s2" value="-" type="button" class="btn btn-info" style="width:80px" onclick="sign(this.id)">-</button></td>
    				</tr>
    				<tr>
      					<td><button id="bpoint" value="." type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">.</button></td>
      					<td><button id="b0" value="0" type="button" class="btn btn-info" style="width:80px" onclick="dispme(this.id)">0</button></td>
      					<td><button type="button" class="btn btn-info" style="width:80px" id="btn" onclick="sub()">=</button></td>
      					<td><button id="s1" value="+" type="button" class="btn btn-info" style="width:80px" onclick="sign(this.id)">+</button></td>
    				</tr>
  				</tbody>
			</table>
		
		</form>
   	</div>
   	
  </body>
</html>
