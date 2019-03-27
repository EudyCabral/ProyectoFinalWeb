<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="LOGON.aspx.cs" Inherits="BusinessSoft.LOGON" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class=" d-flex justify-content-center h-100">
       <div class="panel-body ">
            <div class="card  " style="width:250px" >

                <div class="card-header " style="background-color: gold">


                    <asp:Label ID="Label1" runat="server" Text="Iniciar Ses&iacute;on" Font-Size="XX-Large"></asp:Label>

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
                            <asp:Button Style="background-color: gold" ID="ButtonLogon" runat="server" Text="Login" class="btn float-right login_btn" OnClick="ButtonLogin_Click" ValidationGroup="Entrar" />

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
       

    
</asp:Content>
