﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logon.aspx.cs" Inherits="BusinessSoft.Logon" %>


<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server" >
	<title>Login</title>
	<meta charset="UTF-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css"/>
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
<!--===============================================================================================-->
  
    <%--  <link href="images/icons/favicon.ico" rel="stylesheet" />
      <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    
     <link href="fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <link href="vendor/animate/animate.css" rel="stylesheet" />

    <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
    <link href="vendor/select2/select2.min.css" rel="stylesheet" />
    
    <link href="css/main.css" rel="stylesheet" />
    <link href="css/util.css" rel="stylesheet" />
    --%>
 

  
</head>
<body>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt="">
				
                     <asp:Image ID="Image1" runat="server" ImageUrl="/Imagenes/baner1.png" />
				</div>

				<form  class="login100-form validate-form" runat="server">
					<span class="login100-form-title">
						Iniciar de Sesi&oacute;n
					</span>
           
					<div class="wrap-input100 validate-input" data-validate = "Introduzca el Usuario">
              <asp:TextBox class="input100" ID="TextBoxNombre"   placeholder="Usuario" runat="server"  ></asp:TextBox>
				
						<%--<input class="input100" type="text" name="username" placeholder="Usuario">--%>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>
                    	
					<div class="wrap-input100 validate-input" data-validate = "Introduzca la Contraseña">
                        <asp:TextBox class="input100" ID="TextBoxpass" placeholder="Contraseña" runat="server" TextMode="Password"></asp:TextBox>
					<%--	<input class="input100" type="password" name="pass" placeholder="Contraseña">
				--%>		<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>

				
					<div class="container-login100-form-btn">
					<%--	<button class="login100-form-btn" >
							Login
						</button>--%>
                       
                        <asp:Button ID="ButtonLogin" class="login100-form-btn" runat="server" Text="Login" OnClick="ButtonLogin_Click1" />
					
                            </div>
           
<%--					<div class="text-center p-t-12">
						<span class="txt1">
							Forgot
						</span>
						<a class="txt2" href="#">
							Username / Password?
						</a>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="#">
							Create your Account
							<i class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>--%>
				</form>
			</div>
		</div>
	</div>
	
	

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>