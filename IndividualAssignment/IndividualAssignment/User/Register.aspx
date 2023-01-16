<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="User_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- CSS here -->
            <link rel="stylesheet" href="../assets/css/bootstrap.min.css"/>
            <link rel="stylesheet" href="../assets/css/owl.carousel.min.css"/>
            <link rel="stylesheet" href="../assets/css/flaticon.css"/>
            <link rel="stylesheet" href="../assets/css/price_rangs.css"/>
            <link rel="stylesheet" href="../assets/css/slicknav.css"/>
            <link rel="stylesheet" href="../assets/css/animate.min.css"/>
            <link rel="stylesheet" href="../assets/css/magnific-popup.css"/>
            <link rel="stylesheet" href="../assets/css/fontawesome-all.min.css"/>
            <link rel="stylesheet" href="../assets/css/themify-icons.css"/>
            <link rel="stylesheet" href="../assets/css/slick.css"/>
            <link rel="stylesheet" href="../assets/css/nice-select.css"/>
            <link rel="stylesheet" href="../assets/css/style.css"/>

    <style> 
body {
  background-image: url("../assets/img/loginReg.jpeg");

}
.centerBlockReg{
    background: white;
    display: flex;         
  
  justify-content: center;
  align-items: center;
 

}

</style>
    
		
</head>
<body>
    <section>
<div class="container pt-50 pb-40">
    <form id="form1" runat="server">
        <div class="centerBlockReg">
            <div class="row">
                    <div class="col-12 pb-20">
                           
                    </div>
                    <div class="col-12">
                     
                       <center><h2 class="contact-title">Sign Up</h2></center> 
                    </div>
                    <div class="col-lg-8 mx-auto">
                       <div class="form-contact contact_form">   
                        
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                         <label>Full Name <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtfName">Fullname is required</asp:RequiredFieldValidator>
                                         </label>&nbsp;<asp:TextBox ID="txtfName" class="form-control" runat="server" ></asp:TextBox>
                                    
                                </div>
                                    </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Username <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtUserName">Username is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtUserName" runat="server" class="form-control"></asp:TextBox>  
                                        </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Password&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtPass">Password is required</asp:RequiredFieldValidator>
                                             </label>
                                            <asp:TextBox ID="txtPass" runat="server" class="form-control" TextMode="Password"></asp:TextBox>
                                              <label>
                                            <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtPass" ErrorMessage="CustomValidator" ForeColor="Red" ClientValidationFunction="validateLength" >Password must be between 6-16 characters</asp:CustomValidator>
                                             </label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Confirm Password
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtConPass">Confirm Password is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtConPass" class="form-control" runat="server" TextMode="Password" ></asp:TextBox>
                                       <label>
                                        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPass" ControlToValidate="txtConPass" ErrorMessage="Confirm Password must be same as Password" ForeColor="Red"></asp:CompareValidator>
                                       </label>     
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Mobile Number         
                                      
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtMobile">Mobile Number is required</asp:RequiredFieldValidator>
                                    </label> 
                                        <asp:TextBox ID="txtMobile" class="form-control" runat="server" ></asp:TextBox>
                                         <label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtMobile" ErrorMessage="Invallid Mobile No." ForeColor="Red" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                        </label>
                                    </div>
                                </div>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Date of Birth                                            
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtDob">Date of Birth is required</asp:RequiredFieldValidator>
                                        </label>        
                                      
                                        <asp:TextBox ID="txtDob" class="form-control" runat="server" TextMode="Date" ></asp:TextBox>
                                        <label>
                                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtDob" ErrorMessage="Age must be atleast 18 years" ForeColor="Red" MaximumValue="12/31/2004" MinimumValue="01/01/1904" Type="Date"></asp:RangeValidator>
                                        </label>  
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Address   
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtAddress">Address is required</asp:RequiredFieldValidator>
                                        </label>
                                            &nbsp;<asp:TextBox ID="txtAddress" class="form-control" runat="server" TextMode="MultiLine" ></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Email 
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtEmail">Email is required</asp:RequiredFieldValidator>                                  
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email" ></asp:TextBox>
                                        <label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invallid Email" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                                        </label>
                                    </div>
                                </div>

                                </div>

                                          <div class="main-menu">
                                    
                                       
                                  
                              <center> <a href="../Login.aspx"> Already Have an Account? Click Here To Login!</a>    </center> 
                                                  
                                       
                                </div>  

                            
                            
                            <div class="form-group mt-3">
                                <center> <asp:Button ID="btnRegister" class="button button-contactForm boxed-btn" runat="server" Text="Register" OnClick="btnRegister_Click" /> </center>     
                            </div>
                           </div>    
                        </div>
                     
                    </div>
                 </div>
        
    </form>
    </div>
</section>
</body>
</html>
   
<script type="text/javascript">
    function validateLength(oSrc, args){
        args.IsValid = (args.Value.length >= 6 && args.Value.length <= 16);
    }
</script>
    
