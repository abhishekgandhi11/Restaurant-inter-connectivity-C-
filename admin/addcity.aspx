<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmastpage.master" AutoEventWireup="false" CodeFile="addcity.aspx.vb" Inherits="admin_addcity" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
     <form role="form" id="contactForm" runat="server" data-toggle="validator" class="contact-form shake">
          <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Add City</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>Add City</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->        
    <br />
     <br />
    <br />
      <!-- Start Contact Us Section -->
    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="title1 upper">
                        <i class="fa fa-envelope-o"></i>
                        Enter City Name
                    </h2>
                    <!-- Form -->
                    <!-- Start Contact Form -->
                
                        <div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtcitynm" class="form-control" placeholder="City Name" required data-error="Please City name" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtpincode" class="form-control" placeholder="Pin Code" required data-error="Please enter City Pincode" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <asp:Button ID="btnsaddcity" runat="server" Text="Add City" class="btn btn-effect" />
                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                            <div class="clearfix"></div> 
                        <!-- End Contact Form -->
                </div>
                <div class="col-md-5 col-md-offset-1">
                    <h2 class="title1 upper">
                        <i class=""></i>

                    </h2>
                    <div class="">
                        
                        
                    </div>
                </div>
                
            </div>
        </div>
    </section>
      <!-- End Contact Us Section  -->
      <!-- Conatct Section -->
            </form>
    <br />
    
</asp:Content>

