<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Dashboard.aspx.cs" Inherits="Admin_Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" >
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Applications Table</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-3 pt-sm-3">
        <div class="col-md-12">
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="applicationID" DataSourceID="SqlDataSource2" CssClass="table table-hover table-bordered  mx-auto">
                <Columns>
                    <asp:BoundField DataField="applicationID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="applicationID" />
                    <asp:TemplateField HeaderText="Apply Date" SortExpression="applyDate">
                        <EditItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("applyDate") %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("applyDate", "{0:d}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="compName" HeaderText="Company" SortExpression="compName" ReadOnly="True" />
                    <asp:BoundField DataField="title" HeaderText="Job Title" SortExpression="title" ReadOnly="True" />
                    <asp:BoundField DataField="fullName" HeaderText="User Name" ReadOnly="True" SortExpression="fullName" />
                    <asp:BoundField DataField="email" HeaderText="User Email" ReadOnly="True" SortExpression="email" />
                    
                    <asp:TemplateField HeaderText="Resume" SortExpression="resume">
                       
                        <ItemTemplate>
                            <asp:LinkButton ID="lbFile" runat="server" class="form-control" Visible="true" OnClick="lbFile_Click">View Resume</asp:LinkButton>
                            <asp:Label ID="lbpath" runat="server" Text='<%# Bind("resume") %>' Visible="false"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Status" SortExpression="status">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("status") %>'>
                                <asp:ListItem>New</asp:ListItem>
                                <asp:ListItem>Approved</asp:ListItem>
                                <asp:ListItem>Rejected</asp:ListItem>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:findjobConnectionString %>" 
                SelectCommand="SELECT a.applicationID, a.applyDate, a.status, j.title, u.fullName, u.email, u.resume, c.compName FROM Application a, Job j, [User] u, Company c WHERE j.jobID = a.jobID and u.userID = a.userID and c.companyID = j.companyID"
                UpdateCommand="UPDATE [Application] SET status = @status WHERE applicationID = @applicationID">
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="companyID" Type="String" />
                    <asp:Parameter Name="jobType" Type="String" />
                    <asp:Parameter Name="salary" Type="Double" />
                    <asp:Parameter Name="requirements" Type="String" />
                    <asp:Parameter Name="experience" Type="Int32" />    
                </UpdateParameters>
            </asp:SqlDataSource>
       
        </div>
    </div>
</asp:Content>

