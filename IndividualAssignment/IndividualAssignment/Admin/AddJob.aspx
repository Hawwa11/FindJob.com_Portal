<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddJob.aspx.cs" Inherits="Admin_AddJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <main>
      <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" >
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Add New Job Post</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container pt-50 pb-40">
        <div class="centerBlockReg">
            <div class="row">
  
              
                    <div class="col-lg-8 mx-auto">
                       <div class="form-contact contact_form">   
                        
                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="form-group">
                                         <label>Job Title <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtTitle">Job Title is required</asp:RequiredFieldValidator>
                                         </label>&nbsp;<asp:TextBox ID="txtTitle" class="form-control" runat="server" ></asp:TextBox>
                                    
                                </div>
                                    </div>
                               
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Job Description
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtDesc">Job Description is required</asp:RequiredFieldValidator>
                                             </label>
                                       
                                            <asp:TextBox ID="txtDesc" runat="server" class="form-control" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                             
                                    </div>
                                </div>
                     
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Company ID
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="ddComID">Company ID is required</asp:RequiredFieldValidator>
                                       
                                        </label>
                                        <br />
                                        <asp:DropDownList ID="ddComID" runat="server" class="form-control" DataSourceID="SqlDataSource1" DataTextField="companyID" DataValueField="companyID"></asp:DropDownList>
                                       
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:findjobConnectionString %>" SelectCommand="SELECT [companyID] FROM [Company]"></asp:SqlDataSource>
                                       
                                    </div>
                                </div>
                                    <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Salary <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtSalary">Salary is required</asp:RequiredFieldValidator>
                                        </label>
                                        &nbsp;<asp:TextBox ID="txtSalary" runat="server" class="form-control" TextMode="Number" ControlToValidate="txtSalary"></asp:TextBox>         
                                        <label>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Salary should be more than $99" ControlToValidate="txtSalary" ForeColor="Red" Operator="GreaterThan" ValueToCompare="100"></asp:CompareValidator>
                                        </label>
                                        </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Required Experience                    
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ControlToValidate="txtExp">Experience is required</asp:RequiredFieldValidator>
                                    </label> 
                                        <asp:TextBox ID="txtExp" class="form-control" runat="server" TextMode="Number" ></asp:TextBox>
                                   <label>
                                       <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Experience can only be between 1-10" ForeColor="Red" ControlToValidate="txtExp" MaximumValue="10" MinimumValue="1" Type="Integer"></asp:RangeValidator>
                                     
                                    </label> 
                                        </div>
                                </div>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Job Type                                         
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="rbType">Job Type is required</asp:RequiredFieldValidator>
                                        </label>       
                                        <asp:RadioButtonList ID="rbType" runat="server"  >
                                            <asp:ListItem>Full Time</asp:ListItem>
                                            <asp:ListItem>Part Time</asp:ListItem>
                                            <asp:ListItem>Remote</asp:ListItem>
                                            <asp:ListItem>Freelance</asp:ListItem>
                                        </asp:RadioButtonList>
                    
                                    </div>
                                </div>
                                 <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Job Requirements                                          
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="RequiredFieldValidator"  ForeColor="Red" ControlToValidate="txtReq">Job Requirements is required</asp:RequiredFieldValidator>
                                        </label>    
                                        
                                         <asp:TextBox ID="txtReq" runat="server" class="form-control" TextMode="MultiLine" Rows="6"></asp:TextBox>
                                       
                                       
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
        </main>
</asp:Content>

