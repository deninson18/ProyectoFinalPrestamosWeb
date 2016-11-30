<%@ Page Title="" Language="C#" MasterPageFile="~/Default.Master" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="PrestamosWeb.Principal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br/><br/>
    <br/><br/>
    <br/><br/>
    <!--HOME SECTION-->
    <div class="container" id="home">
        <div class="row text-center scrollclass">
            <div class="col-md-12">
                <span class="head-main">PRESTAMOS </span>
            </div>
        </div>
    </div>
    <!--END HOME SECTION-->

    <!--ABOUT SECTION-->
    
    <section class="for-full-back color-bg-one" id="about">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1>About Our Team</h1>
                </div>
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2 ">
                        <h5>
                           Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                       
                            
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="for-full-back color-white" id="about-team">
        <div class="container">
            <div class="row text-center g-pad-bottom">
                <div class="col-md-8 col-md-offset-2 ">
                    <h3>OUR TEAM MEMBERS</h3>
                    <h5>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                         Curabitur nec nisl odio. Mauris vehicula at nunc id posuere.                          
                    </h5>
                </div>

            </div>
            <div class="row text-center g-pad-bottom">
              
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="alert alert-danger">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Praesent suscipit sem vel ipsum elementum venenatis. 
                            </div>
                        <div class="team-member">
                            <img src="assets/img/team/1.png" class="img-circle"    alt="">
                            <h3><strong>ART DIRECTOR</strong></h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="alert alert-success">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Praesent suscipit sem vel ipsum elementum venenatis. 
                            </div>
                          <div class="team-member">
                            <img src="assets/img/team/2.png" class="img-circle"  alt="">
                             <h3><strong>WEB DESIGNER</strong></h3>
                        </div>
                        
                      
                    </div>
                   <div class="col-md-3 col-sm-3 col-xs-6">
                         <div class="alert alert-warning">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Praesent suscipit sem vel ipsum elementum venenatis. 
                            </div>
                        <div class="team-member">
                            <img src="assets/img/team/4.png" class="img-circle"   alt="">
                            <h3><strong>SUPPORT MANAGER </strong></h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="alert alert-info">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                             Praesent suscipit sem vel ipsum elementum venenatis. 
                            </div>
                        <div class="team-member">
                            
                            <img src="assets/img/team/3.png" class="img-circle"    alt="">
                            <h3><strong>SUPPORT MANAGER </strong></h3>
                        </div>
                    </div>
                  
                
            </div>
           

        </div>
    </section>
    <!--END ABOUT SECTION-->

     <!--CLIENT TESTIMONIALS SECTION-->
       <section id="clients-testimonial">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-12 ">
                    <h1>Clients Testimonials</h1>
 <div id="carousel-example" class="carousel slide" data-ride="carousel">

                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example" data-slide-to="0" class="active"></li>
                        <li data-target="#carousel-example" data-slide-to="1"></li>
                        <li data-target="#carousel-example" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                   
                                    <h4><i class="fa fa-quote-left"></i> Lorem ipsum dolor sit amet, consectetur adipiscing elit onec molestie non sem vel condimentum. <i class="fa fa-quote-right"></i></h4>
                                     <div class="user-img pull-right">
						<img src="assets/img/user.gif" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Lorem Dolor</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4> <i class="fa fa-quote-left"></i> Aenean faucibus luctus enim. Duis quis sem risu suspend lacinia elementum nunc. <i class="fa fa-quote-right"></i></h4>
                                         <div class="user-img pull-right">
						<img src="assets/img/user2.png" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Faucibus luctus</strong></h5>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="container center">
                                <div class="col-md-6 col-md-offset-3 slide-custom">
                                    <h4><i class="fa fa-quote-left"></i>Sed ultricies, libero ut adipiscing fringilla, ante elit luctus lorem, a egestas dui metus a arcu condimentum. <i class="fa fa-quote-right"></i></h4>
                                        <div class="user-img pull-right">
						<img src="assets/img/user.gif" alt="" class="img-u image-responsive"  />
					</div>
                                    <h5 class="pull-right"><strong class="c-black">Sed ultricies</strong></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                    </div>
                </div>
            </div>
           </section>
     <!--END CLIENT TESTIMONIALS SECTION-->
    <!--PRICE SECTION-->
     <section class="for-full-back color-bg-one" id="pricing">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1>Pricing Options</h1>

                </div>
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2 ">
                        <h5>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                       
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section id="price-sec" class="for-full-back color-white">
        <div class="container">
            <div class="row text-center g-pad-bottom">
               
                    
                   <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="panel-danger">
                            <div class="panel-heading">
                             <h4>MEDIUM PLAN</h4> 
                            </div>
                            <div class="alert alert-danger">

                               <ul class="plan">      
                                   <li class="price"><strong>10</strong> <i class="fa fa-dollar"></i></li>                       
                            <li><strong>52</strong> Emails</li>
                            <li><strong>50 GB</strong> Space</li>
                            <li><strong>Free</strong> Support</li>
                           </ul>
                                <a href="#" class="btn btn-danger ">BUY NOW</a>
                            </div>
                            
                        </div>
                    </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="panel-warning">
                            <div class="panel-heading">
                             <h4>MEDIUM PLAN</h4> 
                            </div>
                            <div class="alert alert-warning">

                               <ul class="plan">      
                                   <li class="price"><strong>25</strong> <i class="fa fa-dollar"></i></li>                       
                            <li><strong>52</strong> Emails</li>
                            <li><strong>50 GB</strong> Space</li>
                            <li><strong>Free</strong> Support</li>
                           </ul>
                                 <a href="#" class="btn btn-warning ">BUY NOW</a>
                            </div>
                            
                        </div>
                    </div>
                <div class="col-md-3 col-sm-3 col-xs-6 ">
                        <div class="panel-success">
                            <div class="panel-heading">
                             <h4>ECONOMY PLAN</h4> 
                            </div>
                            <div class="alert alert-success">

                               <ul class="plan">      
                                   <li class="price"><strong>50</strong> <i class="fa fa-dollar"></i></li>                       
                            <li><strong>52</strong> Emails</li>
                            <li><strong>50 GB</strong> Space</li>
                            <li><strong>Free</strong> Support</li>
                           </ul>
                                 <a href="#" class="btn btn-success ">BUY NOW</a>
                            </div>
                           
                        </div>
                    </div>
                <div class="col-md-3 col-sm-3 col-xs-6">
                        <div class="panel-info ">
                            <div class="panel-heading">
                             <h4>ADVANCE PLAN</h4> 
                            </div>
                            <div class=" alert alert-info">

                               <ul class="plan">      
                                   <li class="price"><strong>125</strong> <i class="fa fa-dollar"></i></li>                       
                            <li><strong>52</strong> Emails</li>
                            <li><strong>50 GB</strong> Space</li>
                            <li><strong>Free</strong> Support</li>
                           </ul>
                                 <a href="#" class="btn btn-info ">BUY NOW</a>
                            </div>
                            
                        </div>
                    </div>

               
            </div>


        </div>
    </section>
    <!-- END PRICE SECTION-->

  
    <!--STATS SECTION-->
    <section>
        <div class="container">
            <div class="row ">
                <div class="col-md-3 ">
                    <div class="stats-div">
                        <h3>5000+ </h3>
                        <h4>Projects</h4>
                    </div>
                </div>


                <div class="col-md-3 ">
                    <div class="stats-div">
                        <h3>205+ </h3>
                        <h4>Countries</h4>
                    </div>

                </div>
                <div class="col-md-3 ">

                    <div class="stats-div">
                        <h3>1300+ </h3>
                        <h4>Offices</h4>
                    </div>
                </div>
                <div class="col-md-3 ">
                    <div class="stats-div">
                        <h3>2400+ </h3>
                        <h4>Clients</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--END STATS SECTION-->

    <!--CONTACT SECTION-->
    <section class="for-full-back color-bg-one" id="contact">
        <div class="container">
            <div class="row text-center">
                <div class="col-md-8 col-md-offset-2 ">
                    <h1>Contact</h1>
                </div>
                <div class="row text-center">
                    <div class="col-md-8 col-md-offset-2 ">
                        <h5>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                         
                        </h5>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <section class="for-full-back color-white text-center" id="contact-inner">
        <div class="container">
           
                    <h1>GET IN TOUCH</h1>
                    
                    <form>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Name">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="text" class="form-control" required="required" placeholder="Email address">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 col-sm-12">
                                <div class="form-group">
                                    <textarea name="message" id="message" required="required" class="form-control" style="min-height:200px;" placeholder="Message"></textarea>
                                </div>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary btn-lg">Submit Request</button>
                                </div>
                            </div>
                        </div>
                    </form>
                     <div id="add">
                         <br />
                                                New Your City, USA
                         <br />
                         Call: + 123-00-89-00
                        <br />
                         E-mail: info@binarytheme.com
                    </div>
              
        </div>
    </section>
    <!--END CONTACT SECTION-->
    <!--SOCIAL SECTION-->
    <section id="social-section">
        <div class="container">
            <div class="row text-center">
                    <div class="col-md-4 scl scl-dark-bk">
					<h4>FACEBOOK</h4>
					<p class="text-center"><a href="#"><i class="fa fa-facebook fa-5x"></i></a></p>
				</div>
				<div class="col-md-4 scl">
					<h4 >TWITTER</h4>
					<p class="text-center"><a href="#"><i class="fa fa-twitter fa-5x"></i></a></p>
				</div>
				<div class="col-md-4 scl scl-dark-bk">
					<h4 >GOOGLE +</h4>
					<p class="text-center"><a href="#"><i class="fa fa-google-plus fa-5x"></i></a></p>
				</div>
                    </div>
            </div>
        </section>
  
    <!--END SOCIAL SECTION-->
   
</asp:Content>
