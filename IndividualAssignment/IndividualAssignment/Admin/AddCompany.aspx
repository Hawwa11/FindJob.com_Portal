<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCompany.aspx.cs" Inherits="Admin_AddCompany" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" >
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Add New Company</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container pt-50 pb-40">
        <div class="centerBlockReg">
            <div class="row">
                    <div class="col-12 pb-20">
                           
                    </div>
                 
                    <div class="col-lg-8 mx-auto">
                       <div class="form-contact contact_form">   
                        
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                         <label>Company ID <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtId">Company ID is required</asp:RequiredFieldValidator>
                                         </label>&nbsp;<asp:TextBox ID="txtId" class="form-control" runat="server" ></asp:TextBox>
                                    <label>
                                            <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="txtId" ErrorMessage="CustomValidator" ForeColor="Red" ClientValidationFunction="validateLength" >Company ID must be 5 characters</asp:CustomValidator>
                                             </label>
                                </div>
                                    </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Company Name <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtName">Company Name is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtName" runat="server" class="form-control"></asp:TextBox>                                
                                        </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Description
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtDesc">Company Description is required</asp:RequiredFieldValidator>
                                             </label>
                                       
                                            <asp:TextBox ID="txtDesc" runat="server" class="form-control" TextMode="MultiLine"></asp:TextBox>
                                             
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Country
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="dDCountry">Country is required</asp:RequiredFieldValidator>
                                       
                                        </label>
                                        <br />
                                        <asp:DropDownList ID="dDCountry" runat="server" class="form-control">
                                            <asp:ListItem>Malaysia</asp:ListItem>
                                            <asp:ListItem>China</asp:ListItem>
                                            <asp:ListItem>UK</asp:ListItem>
                                            <asp:ListItem>Germany</asp:ListItem>
                                            <asp:ListItem>US</asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Comapany Email                    
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtEmail">Email is required</asp:RequiredFieldValidator>
                                    </label> 
                                        <asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email" ></asp:TextBox>
                                    </div>
                                </div>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Company Logo                                           
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="fULogo">Company Logo is required</asp:RequiredFieldValidator>
                                        </label>        
                                        <asp:FileUpload ID="fULogo" runat="server" class="form-control" ToolTip=".jpg, •jpeg, .png extension only"/>
                                       
                                       
                                    </div>
                                </div>
   

                                </div>


                            
                            
                            <div class="form-group mt-3">
                                <center> <asp:Button ID="btnSubmit" class="button button-contactForm boxed-btn" runat="server" Text="Submit" OnClick="btnSubmit_Click" /> </center>     
                            </div>
                           </div>    
                        </div>
                     
                    </div>
                 </div>
        
   
    </div>

    <script type="text/javascript">
        function validateLength(oSrc, args) {
            args.IsValid = (args.Value.length == 5);
        }
    </script>
</asp:Content>
