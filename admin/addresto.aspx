<%@ Page Title="" Language="VB" MasterPageFile="~/admin/adminmastpage.master" AutoEventWireup="false" CodeFile="addresto.aspx.vb" Inherits="admin_addresto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <form role="form" id="contactForm" runat="server" data-toggle="validator" class="contact-form shake">
          <!-- Start Page Banner -->
      <div class="page-banner">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-sm-6">
              <h2>Add Restaurant</h2>
            </div>
            <div class="col-md-6 col-sm-6">
              <div class="breadcrumbs">
                <a href="#">Home</a>
                <span class="crumbs-spacer"><i class="fa fa-angle-right"></i></span>
                <span>Add Restaurant</span>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- End Page Banner -->        
      
      <!-- Start Contact Us Section -->
    <section id="content">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2 class="title1 upper">
                        <i class="fa fa-envelope-o"></i>
                        Fill Restaurant Information
                    </h2>
                    <!-- Form -->
                    <!-- Start Contact Form -->
                
                        <div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtrestonm" class="form-control" placeholder="Restaurant Name" required data-error="Please restaurant name" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtrestousernm" class="form-control" placeholder="Restaurant User Name" required data-error="Please enter restaurant user your" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtrpass" class="form-control" placeholder="Restaurant User Password" required data-error="Please enter restaurant user password" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtaddress" placeholder="Address" class="form-control" required data-error="Write your message" runat="server" TextMode="MultiLine"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:DropDownList ID="ddlcity" runat="server" class="form-control" placeholder="" required data-error="Please enter restaurant user password" DataSourceID="SqlDataSource1" DataTextField="citynm" DataValueField="citynm"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [citynm] FROM [city]"></asp:SqlDataSource>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:DropDownList ID="ddlpincode"  class="form-control" placeholder="Pincode" required data-error="Please enter city pincode" runat="server" DataSourceID="SqlDataSource4" DataTextField="pincode" DataValueField="pincode"></asp:DropDownList>
                                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [pincode] FROM [city]"></asp:SqlDataSource>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtmobile" class="form-control" placeholder="Mobile Number" required data-error="Please enter restaurant contact no" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtcno" class="form-control" placeholder="Contact Number" required data-error="Please enter restaurant contact no" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        </div>

                        <!-- End Contact Form -->
                </div>
                <div class="col-md-5 col-md-offset-1">
                    <h2 class="title1 upper">
                        <i class=""></i>

                    </h2>
                    <div class="">
                        <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtemail" class="form-control" placeholder="Email Id" required data-error="Please enter valid email id" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        <div class="form-group">
                                <div class="controls">
                                    <asp:TextBox ID="txtwebsite" class="form-control" placeholder="Official Website" required data-error="Please enter valid email id" runat="server"></asp:TextBox>
                                    <div class="help-block with-errors"></div>
                                </div>
                            </div>
                        <div class="form-group">
                            <div class="controls">
                                <asp:DropDownList ID="ddlrestotype" runat="server" class="form-control" placeholder="" required data-error="" DataSourceID="SqlDataSource5" DataTextField="restotype" DataValueField="restotype"></asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [restotype] FROM [restotype]"></asp:SqlDataSource>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <asp:TextBox ID="txtheadnm" class="form-control" placeholder="Head Name" required data-error="Please restaurant name" runat="server"></asp:TextBox>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <asp:TextBox ID="txtfacility" class="form-control" placeholder="Restaurant Facility" required data-error="Please restaurant name" runat="server"></asp:TextBox>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <asp:TextBox ID="txtservices" class="form-control" placeholder="Restaurant Services" required data-error="Please restaurant name" runat="server"></asp:TextBox>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls">
                                <asp:FileUpload ID="restoimageupload" runat="server" class="form-control" placeholder="Restaurant Image" />
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                         <div class="form-group">
                            <div class="controls">
                                <asp:Label ID="lblimgup" runat="server"></asp:Label>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                        <asp:Button ID="btnsubmit" runat="server" Text="SUBMIT" class="btn btn-effect" />
                            <div id="msgSubmit" class="h3 text-center hidden"></div>
                            <div class="clearfix"></div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
      <!-- End Contact Us Section  -->
      <!-- Conatct Section -->
            </form>
</asp:Content>

