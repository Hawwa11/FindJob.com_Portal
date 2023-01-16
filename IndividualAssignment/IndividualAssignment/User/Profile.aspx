<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="Profile.aspx.cs" Inherits="User_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <main>
         <!-- Hero Area Start-->
      <div class="col-xl-8" ></div>
        <div class="slider-area "  >
            <div class="single-slider section-overly slider-height2 d-flex align-items-center" >
                <div class="container" >
                    <div class="row" >
                        <div class="col-xl-12" >
                            <div class="hero-cap text-center" \ >
                                <h2>Profile Details</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          <div class="container pt-50 pb-40">
    <div id="form1" runat="server">
        <div class="centerBlockReg">
            <div class="row">
                    <div class="col-12 pb-20">
                           
                    </div>
                    <div class="col-12">
                     
                    </div>
                    <div class="col-lg-8 mx-auto">
                       <div class="form-contact contact_form">   
                        
                            <div class="row">
                                <div class="col-12">
                                    <div class="form-group">
                                         <label>Full Name <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtfName">Fullname is required</asp:RequiredFieldValidator>
                                         </label>&nbsp;<asp:TextBox ID="txtfName" class="form-control" runat="server" readonly="true"></asp:TextBox>
                                    
                                </div>
                                    </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Username <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtUserName">Username is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtUserName" runat="server" class="form-control" readonly="true"></asp:TextBox>                                
                                        </div>
                                </div>
                             
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Mobile Number         
                                      
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtMobile">Mobile Number is required</asp:RequiredFieldValidator>
                                    </label> 
                                        <asp:TextBox ID="txtMobile" class="form-control" runat="server" readonly="true"></asp:TextBox>
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
                                      
                                        <asp:TextBox ID="txtDob" class="form-control" runat="server" TextMode="Date" readonly="true"></asp:TextBox>
                                        <label>
                                        <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToValidate="txtDob" ErrorMessage="Age must be atleast 18 years" ForeColor="Red" Operator="LessThan" Type="Date" ValueToCompare="01/01/2005"></asp:CompareValidator>
                                        </label>  
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Address   
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtAddress">Address is required</asp:RequiredFieldValidator>
                                        </label>
                                            &nbsp;<asp:TextBox ID="txtAddress" class="form-control" runat="server" TextMode="MultiLine" readonly="true"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Email 
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtEmail">Email is required</asp:RequiredFieldValidator>                                  
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtEmail" class="form-control" runat="server" TextMode="Email" readonly="true"></asp:TextBox>
                                        <label>
                                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invallid Email" ForeColor="Red" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$"></asp:RegularExpressionValidator>
                                        </label>
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Resume  
                                        </label>    
                                        <asp:LinkButton ID="lbFile" runat="server" class="form-control" Visible="true" OnClick="lbFile_Click">View Resume</asp:LinkButton>
                                        
                                        <asp:FileUpload ID="fUResume" runat="server" class="form-control" Visible="false" ToolTip=".pdf extension only"/>
                                       
                                       
                                    </div>
                                </div>

                                </div>

                                         

                            
                            
                            <div class="form-group mt-3">
                              <center>  <asp:LinkButton ID="btnUpdate" runat="server" class="button button-contactForm boxed-btn" 
                                  CausesValidation ="false" onClick ="lbEditUpdate_Click"></asp:LinkButton> </center>     
                            </div>
                           </div>    
                        </div>
                     
                    </div>
                 </div>
        
    </div>
    </div>

     </main>
</asp:Content>

