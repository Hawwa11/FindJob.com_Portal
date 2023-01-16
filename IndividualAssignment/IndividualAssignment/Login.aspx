<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS here -->
            <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
            <link rel="stylesheet" href="assets/css/owl.carousel.min.css"/>
            <link rel="stylesheet" href="assets/css/flaticon.css"/>
            <link rel="stylesheet" href="assets/css/price_rangs.css"/>
            <link rel="stylesheet" href="assets/css/slicknav.css"/>
            <link rel="stylesheet" href="assets/css/animate.min.css"/>
            <link rel="stylesheet" href="assets/css/magnific-popup.css"/>
            <link rel="stylesheet" href="assets/css/fontawesome-all.min.css"/>
            <link rel="stylesheet" href="assets/css/themify-icons.css"/>
            <link rel="stylesheet" href="assets/css/slick.css"/>
            <link rel="stylesheet" href="assets/css/nice-select.css"/>
            <link rel="stylesheet" href="assets/css/style.css"/>

    <style> 
body {
    background-image: url("../assets/img/loginReg.jpeg");

}
.centerBlockReg{
    background: white;
    display: flex;         
  
  justify-content: center;
  align-items: center;
  width: 80%;

 

}

</style>
    

</head>
<body>
    <section>
<div class="container pt-50 pb-40">
    <form id="form1" runat="server">
        <div class="centerBlockReg mx-auto my-auto">
            <div class="row">
                    <div class="col-12 pb-20">
                         
                    </div>
                    <div class="col-12">
                     
                       <center><h2 class="contact-title">Sign In</h2></center> 
                    </div>
                    <div class="col-lg-8 mx-auto">
                       <div class="form-contact contact_form">   
                        
                            <div class="row">
                         
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Username <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator" Font-Size="Smaller" ForeColor="Red" ControlToValidate="txtUserName">Username is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtUserName" runat="server" class="form-control"></asp:TextBox>                                
                                        </div>
                                </div>
                                </div>
                           <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                        <label>Password&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" Font-Size="Smaller" ForeColor="Red" ControlToValidate="txtPass">Password is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                    </div>
                                </div>
               
                            </div>
                           <div >
                               <div class="main-menu">
                                    
                                       
                                  
                              <center> <a href="User/Register.aspx"> Don't Have Account? Click Here To Register!</a>    </center> 
                                                  
                                       
                                </div>  
                            </div>
                             
                            <div class="form-group mt-3">
                              <center> <asp:Button ID="btnLogin" class="button button-contactForm boxed-btn" runat="server" Text="Login" OnClick="btnLogin_Click" />      </center> 
                            </div>
                               
                        </div>
                     
                    </div>
                 </div>
        
    </form>
    </div>
</section>
</body>
</html>
