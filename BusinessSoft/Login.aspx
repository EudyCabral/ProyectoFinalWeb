<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BusinessSoft.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    
    <!-- Bootstrap CSS -->

    <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS"
        crossorigin="anonymous">

    <script
        src="https://code.jquery.com/jquery-3.3.1.min.js"
        integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    <%-- CSS--%>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <%-- asta aqui--%>

        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">


    <%--TOAST--%>
    <link href="content/toastr.css" rel="stylesheet" />
    <script src="Scripts/toastr.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

</head>
<body>
    <form id="form1" runat="server">
        

        <div style="background-color: gold; text-align: center">
            <div class="container">


                <div class="form-group  row" style="align-items: center;">
                    <div class="col-md-12">
                        <img class="rounded " height="150" src="/Imagenes/baner1.png" alt="">
                    </div>
                    <asp:Label ID="Label1" Style="text-align: center;" class="col-md-12 display-4" runat="server" Text="Compraventa Libertad"></asp:Label>

                    <asp:Label ID="Label2" Style="text-align: center;" class="col-md-12 lead" runat="server" Text="Seguridad-Garant&iacute;a y Confianza."></asp:Label>
                </div>
            </div>



            <nav class="navbar navbar-expand-lg bg-dark navbar-dark">
                <img class="rounded" height="35" src="/Imagenes/baner1.png" alt="">
                <a class="navbar-brand" href="/default.aspx">Compraventa Libertad</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/default.aspx">Inicio <span class="sr-only">(current)</span></a>
                        </li>
                        <!-- Dropdown Cuentas-->
                        <li class="nav-item dropdown" style="color: #000000;">
                            <a class="nav-link dropdown-toggle" id="navbarDropdowncuentas" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cuentas
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            </div>
                        </li>

                        <!-- Dropdown Registros-->
                        <li class="nav-item dropdown" style="color: #000000;">
                            <a class="nav-link dropdown-toggle" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Registros
                            </a>
                            <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                           </div>
                        </li>


                        <!-- Dropdown Consultas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="Cuentas" data-toggle="dropdown">Consultas
                            </a>
                            <div class="dropdown-menu">

                            </div>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="perfil" data-toggle="dropdown">Perfil
                            </a>
                            <div class="dropdown-menu">
                              <asp:LoginStatus ID="Loginstatus" style="text-align: right;" runat="server" Visible="True" />
                           
                            </div>
                        </li>

                    </ul>
                    
                 
                </div>
                
                        
            </nav>

        </div>

        <div class="panel-body">
<div class=" d-flex justify-content-center h-100">
       <div class="panel-body ">
            <div class="card  " style="width:250px" >

                <div class="card-header " style="background-color: gold">


                    <asp:Label ID="Label3" runat="server" Text="Iniciar Ses&iacute;on" Font-Size="XX-Large"></asp:Label>

                    <div class="d-flex justify-content-end social_icon">

                        <span><i class="fab fa-facebook-square"></i></span>

                        <span><i class="fab fa-google-plus-square"></i></span>

                        <span><i class="fab fa-twitter-square"></i></span>

                    </div>

                </div>

                <div class="card-body">

                    <form>

                        <div class="input-group form-group">

                          

                                <span style="background-color: gold" class="col-2 form-control"><i class="fas fa-user"></i></span>
                            
                                <asp:TextBox class="form-control" ID="TextBoxenterUsuario" placeholder="Usuario" runat="server"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator" runat="server" ErrorMessage="Digite su Usuario" ControlToValidate="TextBoxenterUsuario" ValidationGroup="Entrar" ForeColor="Red"></asp:RequiredFieldValidator>
                              
                            </div>

           


                        <div class=" input-group   form-group">
                         

                                <span style="background-color: gold" class=" col-2 form-control "><i class="fas fa-key"></i></span>
                               
                                <asp:TextBox placeholder="Contraseña" class="form-control" ID="TextBoxcontrasena" runat="server" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Digite su Contraseña" ControlToValidate="TextBoxcontrasena" ValidationGroup="Entrar" ForeColor="Red"></asp:RequiredFieldValidator>

                       
                       
                            </div>



                        <div class="form-group">
                            <asp:Button Style="background-color: gold" ID="ButtonLogon" runat="server" Text="Login" class="btn float-right login_btn"  ValidationGroup="Entrar" OnClick="ButtonLogon_Click" />

                        </div>

                    </form>

                </div>

             
            <div class="card-footer" style="background-color: gold; height: 50px;">

                <div class="d-flex justify-content-center links">
                    <a href="#"></a>

                </div>

                <div class="d-flex justify-content-center">

                    <a href="#"></a>

                </div>

            </div>

        </div>
    </div>
    </div>
       
       
        </div>


        <div style="margin-top: 30px">
            

            <footer style="text-align: center">
                <hr />
                <p>&copy; <%: DateTime.Now.Year %> - CopyRight LabSoft RD</p>
            </footer>
        </div>

    </form>
</body>
</html>
