<%@ Page Title="" Language="C#" MasterPageFile="~/User/UserMasterPage.master" AutoEventWireup="true" CodeFile="JobDetails.aspx.cs" Inherits="User_JobDetails" %>

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
                                <h2>Job Details</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
        <!-- Hero Area End -->
        <!-- job post company Start -->
        <div class="job-post-company pt-120 pb-120">
            <div class="container">
                <div class="row justify-content-between">
                    <!-- Left Content -->
                    <div class="col-xl-7 col-lg-8">
                        <!-- job single -->
                        <div class="single-job-items mb-50">
                            <div class="job-items">
                                <div class="company-img company-img-details">
                                    <a href="#"><asp:Image ID="Image1" runat="server" Width="200" /></a>
                                </div>
                               
                                    <a href="#">
                                        <h4><asp:Label ID="lblTitle" runat="server"></asp:Label></h4>
                                    </a>
                             
                               
                            </div>
                        </div>
                          <!-- job single End -->
                       
                        <div class="job-post-details">
                            <div class="post-details1 mb-50">
                                <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Job Description</h4>
                                </div>
                                <p> <asp:Label ID="lblDesc" runat="server" Text="Label"></asp:Label></p>
                            </div>
                            <div class="post-details2  mb-50">
                                 <!-- Small Section Tittle -->
                                <div class="small-section-tittle">
                                    <h4>Required Knowledge, Skills, and Abilities</h4>
                                </div>
                              
                                    <p> <asp:Label ID="lblReqs" runat="server" Text="Label"></asp:Label>     </p>                         
                              
                            </div>                           
                        </div>

                    </div>
                    <!-- Right Content -->
                    <div class="col-xl-4 col-lg-4">
                        <div class="post-details3  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4>Job Overview</h4>
                           </div>
                          <ul>
                              <li>Posted date : <span><asp:Label ID="lblPostDate" runat="server"></asp:Label></span></li>
                              <li>Location : <span><asp:Label ID="lblCountry" runat="server"></asp:Label></span></li>
                              <li>Job nature : <span><asp:Label ID="lblType" runat="server" ></asp:Label></span></li>
                              <li>Salary :  <span>$ <asp:Label ID="lblSalary" runat="server" ></asp:Label></span></li>
                              <li>Required Experiance :  <span><asp:Label ID="lblExp" runat="server" ></asp:Label>years</span></li>
                          </ul>
                         <div class="apply-btn2">
                             <asp:LinkButton ID="btnApply" runat="server" class="btn" OnClick="btnApply_Click" Text="Apply Now">LinkButton</asp:LinkButton>
                          
                          
                         </div>
                       </div>
                        <div class="post-details4  mb-50">
                            <!-- Small Section Tittle -->
                           <div class="small-section-tittle">
                               <h4 style="color: #176560">Company Information</h4>
                           </div>
                             
                              <p><asp:Label ID="lblCompDesc" runat="server"></asp:Label></p>
                            <ul>               
                                <li>Name: <span>      <asp:Label ID="lblCompany" runat="server"></asp:Label></span></li>
                                <li>Email: <span>     <asp:Label ID="lblEmail" runat="server"></asp:Label></span></li>
                            </ul>
                       </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- job post company End -->

    </main>
</asp:Content>

