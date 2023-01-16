<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="JobList.aspx.cs" Inherits="Admin_JobList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="slider-area ">
        <div class="single-slider section-overly slider-height2 d-flex align-items-center" >
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="hero-cap text-center">
                            <h2>Job Lists Table</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-3 pt-sm-3">
        <div class="col-md-12">
            
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="jobID" DataSourceID="SqlDataSource2" CssClass="table table-hover table-bordered" OnRowDeleting="GridView2_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="jobID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="jobID" />
                    <asp:BoundField DataField="title" HeaderText="Job Title" SortExpression="title" />
                    <asp:TemplateField HeaderText="Job Description" SortExpression="description">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("description") %>' Rows="6" TextMode="MultiLine"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("description") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Company ID" SortExpression="companyID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="companyID" DataValueField="companyID" SelectedValue='<%# Bind("companyID") %>'>
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:findjobConnectionString %>" SelectCommand="SELECT [companyID] FROM [Company]"></asp:SqlDataSource>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("companyID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Type" SortExpression="jobType">
                        <EditItemTemplate>
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server" SelectedValue='<%# Bind("jobType") %>'>
                                <asp:ListItem>Full Time</asp:ListItem>
                                <asp:ListItem>Part Time</asp:ListItem>
                                <asp:ListItem>Remote</asp:ListItem>
                                <asp:ListItem>Freelance</asp:ListItem>
                            </asp:RadioButtonList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("jobType") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="salary" HeaderText="Salary" SortExpression="salary" />
                    <asp:TemplateField HeaderText="Job Requirements" SortExpression="requirements">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("requirements") %>' Rows="6" TextMode="MultiLine"></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("requirements") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="experience" HeaderText="Experience" SortExpression="experience" />
                    <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:findjobConnectionString %>" 
                SelectCommand="SELECT * FROM [Job]"
                DeleteCommand="DELETE FROM [Job] WHERE jobID = @jobID"
                UpdateCommand="UPDATE [Job] SET title = @title, description = @description, companyID = @companyID, jobType=@jobType, salary=@salary, requirements=@requirements, experience=@experience WHERE jobID = @jobID">
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

