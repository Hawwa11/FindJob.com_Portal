<%@ Page Language="C#" MasterPagefile="~/User/UserMasterPage.Master" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="User_HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <main>

        <!-- Hero Area Start-->
      <div class="col-xl-8" background-image="../assets/img/backgroud2.jpg"></div>
        <div class="slider-area " background-image="../assets/img/backgroud2.jpg" >
            <div class="single-slider section-overly slider-height2 d-flex align-items-center" background-image="../assets/img/backgroud2.jpg">
                <div class="container" background-image="../assets/img/backgroud2.jpg">
                    <div class="row" background-image="../assets/img/backgroud2.jpg">
                        <div class="col-xl-12" background-image="../assets/img/backgroud2.jpg">
                            <div class="hero-cap text-center" background-image="../assets/img/backgroud2.jpg" >
                                <h2>Find Your Dream Job Now!</h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
  
        <!-- Hero Area End -->
        <!-- Job List Area Start -->
        <div class="job-listing-area pt-120 pb-120">
            <div class="container">
                <div class="row">
                    <!-- Left content -->
                    <div class="col-xl-3 col-lg-3 col-md-4">
                        <div class="row">
                        
                        </div>
                            </div>
                            <!-- single two -->
                      
                      
                    
                    <!-- Right content -->
                    <div class="col-xl-9 col-lg-9 col-md-8">
                        <!-- Featured_job_start -->
                        <section class="featured-job-area">
                            <div class="container">
                                <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder>

                            </div>
                        </section>
                        <!-- Featured_job_end -->
                    </div>
                </div>
            </div>
       </div>
        <!-- Job List Area End -->
      
        
    </main>
</asp:Content>


