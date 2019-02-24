<!--
Au<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>New ShopS a E-Commerce Online Shopping Category Flat Bootstrap Responsive Website Template | Checkout :: w3layouts</title>
<!--css-->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.css" rel="stylesheet">
<style>
	.wizard {
    margin: 20px auto;
    background: #fff;
}

    .wizard .nav-tabs {
        position: relative;
        margin: 40px auto;
        margin-bottom: 0;
        border-bottom-color: #e0e0e0;
    }

    .wizard > div.wizard-inner {
        position: relative;
    }

.connecting-line {
    height: 2px;
    background: #e0e0e0;
    position: absolute;
    width: 80%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.wizard .nav-tabs > li.active > a, .wizard .nav-tabs > li.active > a:hover, .wizard .nav-tabs > li.active > a:focus {
    color: #555555;
    cursor: default;
    border: 0;
    border-bottom-color: transparent;
}

span.round-tab {
    width: 70px;
    height: 70px;
    line-height: 70px;
    display: inline-block;
    border-radius: 100px;
    background: #fff;
    border: 2px solid #e0e0e0;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}
span.round-tab i{
    color:#555555;
}
.wizard li.active span.round-tab {
    background: #fff;
    border: 2px solid #5bc0de;
    
}
.wizard li.active span.round-tab i{
    color: #5bc0de;
}

span.round-tab:hover {
    color: #333;
    border: 2px solid #333;
}

.wizard .nav-tabs > li {
    width: 25%;
}

.wizard li:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #5bc0de;
    transition: 0.1s ease-in-out;
}

.wizard li.active:after {
    content: " ";
    position: absolute;
    left: 46%;
    opacity: 1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #5bc0de;
}

.wizard .nav-tabs > li a {
    width: 70px;
    height: 70px;
    margin: 20px auto;
    border-radius: 100%;
    padding: 0;
}

    .wizard .nav-tabs > li a:hover {
        background: transparent;
    }

.wizard .tab-pane {
    position: relative;
    padding-top: 50px;
}

.wizard h3 {
    margin-top: 0;
}

@media( max-width : 585px ) {

    .wizard {
        width: 90%;
        height: auto !important;
    }

    span.round-tab {
        font-size: 16px;
        width: 50px;
        height: 50px;
        line-height: 50px;
    }

    .wizard .nav-tabs > li a {
        width: 50px;
        height: 50px;
        line-height: 50px;
    }

    .wizard li.active:after {
        content: " ";
        position: absolute;
        left: 35%;
    }
}
</style>
<!--css-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="New Shop Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	<script src="js/main.js"></script>
<!--search jQuery-->

 <!--mycart-->
<script type="text/javascript" src="js/bootstrap-3.1.1.min.js"></script>
 <!-- cart -->
<script src="js/simpleCart.min.js"></script>
<!-- cart -->
</head>
<body>
	<!--header-->
		<div class="header">
			<div class="header-top">
				<div class="container">
					 <div class="top-left">
						<a href="#"> Help  <i class="glyphicon glyphicon-phone" aria-hidden="true"></i> +0123-456-789</a>
					</div>
					<div class="top-right">
					<ul>
						<li><a href="checkout.html">Checkout</a></li>
						<li><a href="{{ route('admin.login') }}">Login</a></li>
						<li><a href="{{ route('admin.register') }}"> Create Account </a></li>
					</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
			<div class="heder-bottom">
				<div class="container">
					<div class="logo-nav">
						<div class="logo-nav-left">
							<h1><a href="index.html">New Shop <span>Shop anywhere</span></a></h1>
						</div>
						<div class="logo-nav-left1">
							<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="{{route('admin.index')}}" class="act">Home</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Women<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.html">Clothing</a></li>
														<li><a href="products.html">Wallets</a></li>
														<li><a href="products.html">Shoes</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html"> Underwear </a></li>
														<li><a href="products.html">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu2</h6>
														<li><a href="products.html">Sunglasses</a></li>
														<li><a href="products.html">Wallets,Bags</a></li>
														<li><a href="products.html">Footwear</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html">Accessories</a></li>
														<li><a href="products.html">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products.html"><img src="images/woo.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products.html"><img src="images/woo1.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Men <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu1</h6>
														<li><a href="products.html">Clothing</a></li>
														<li><a href="products.html">Wallets</a></li>
														<li><a href="products.html">Shoes</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html"> Underwear </a></li>
														<li><a href="products.html">Accessories</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Submenu 2</h6>
														<li><a href="products.html">Sunglasses</a></li>
														<li><a href="products.html">Wallets,Bags</a></li>
														<li><a href="products.html">Footwear</a></li>
														<li><a href="products.html">Watches</a></li>
														<li><a href="products.html">Accessories</a></li>
														<li><a href="products.html">Jewellery</a></li>
													</ul>
												</div>
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.html"><img src="images/woo3.jpg" alt=" "/></a>
												</div> 
												<div class="col-sm-3  multi-gd-img">
														<a href="products1.html"><img src="images/woo4.jpg" alt=" "/></a>
												</div>
												<div class="clearfix"></div>
											</div>
										</ul>
									</li>
									<li><a href="codes.html">Short Codes</a></li>
									<li><a href="mail.html">Mail Us</a></li>
								</ul>
							</div>
							</nav>
						</div>
						<div class="logo-nav-right">
							<ul class="cd-header-buttons">
								<li><a class="cd-search-trigger" href="#cd-search"> <span></span></a></li>
							</ul> <!-- cd-header-buttons -->
							<div id="cd-search" class="cd-search">
								<form action="#" method="post">
									<input name="Search" type="search" placeholder="Search...">
								</form>
							</div>	
						</div>
						<div class="header-right2">
							<div class="cart box_1">
								<a href="checkout.html">
									<h3> <div class="total">
										<span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</div>
										<img src="images/bag.png" alt="" />
									</h3>
								</a>
								<p><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
								<div class="clearfix"> </div>
							</div>	
						</div>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		</div>
		<!--header-->
		<!--banner-->
		<div class="banner1">
			<div class="container">
				<h3><a href="index.html">Home</a> / <span>Checkout</span></h3>
			</div>
		</div>
	<!--banner-->

	<!--content-->
	@yield('checkout')
		{{-- <div class="content">
			<div class="cart-items">
				<div class="container">
					 <h2>My Shopping Bag (3)</h2>
						<script>$(document).ready(function(c) {
							$('.close1').on('click', function(c){
								$('.cart-header').fadeOut('slow', function(c){
									$('.cart-header').remove();
								});
								});	  
							});
					   </script>
					 <div class="cart-header">
						 <div class="close1"> </div>
						 <div class="cart-sec simpleCart_shelfItem">
								<div class="cart-item cyc">
									 <img src="images/p15.jpg" class="img-responsive" alt="">
								</div>
							   <div class="cart-item-info">
								<h3><a href="#"> Lorem Ipsum is not simply </a><span>Pickup time:</span></h3>
								<ul class="qty">
									<li><p>Min. order value:</p></li>
									<li><p>FREE delivery</p></li>
								</ul>
									 <div class="delivery">
									 <p>Service Charges : $10.00</p>
									 <span>Delivered in 1-1:30 hours</span>
									 <div class="clearfix"></div>
								</div>	
							   </div>
							   <div class="clearfix"></div>
													
						  </div>
					 </div>
					
				</div>
			</div>
	<!-- checkout -->	
		</div> --}}
		
		<div class="container">
			<div class="row">
				<section>
					<div class="box box-primary">
						<div class="box-body">
					        <div class="wizard col-md-12">
					            <h1>Jquery Steps by mmm</h1>
					            <div class="wizard-inner">
					                <div class="connecting-line"></div>
					                <ul class="nav nav-tabs" role="tablist">

					                    <li role="presentation" class="active">
					                        <a href="#step1" data-toggle="tab" aria-controls="step1" role="tab" title="Step 1">
					                            <span class="round-tab">
					                                <i class="glyphicon glyphicon-folder-open"></i>
					                            </span>
					                        </a>
					                    </li>

					                    <li role="presentation" class="disabled">
					                        <a href="#step2" data-toggle="tab" aria-controls="step2" role="tab" title="Step 2">
					                            <span class="round-tab">
					                                <i class="glyphicon glyphicon-send"></i>
					                            </span>
					                        </a>
					                    </li>
					                    <li role="presentation" class="disabled">
					                        <a href="#step3" data-toggle="tab" aria-controls="step3" role="tab" title="Step 3">
					                            <span class="round-tab">
					                                <i class="glyphicon glyphicon-shopping-cart"></i>
					                            </span>
					                        </a>
					                    </li>

					                    <li role="presentation" class="disabled">
					                        <a href="#complete" data-toggle="tab" aria-controls="complete" role="tab" title="Complete">
					                            <span class="round-tab">
					                                <i class="glyphicon glyphicon-ok"></i>
					                            </span>
					                        </a>
					                    </li>
					                </ul>
					            </div>
									<div>
						            <form role="form">
						                <div class="tab-content">
						                    <div class="tab-pane active" role="tabpanel" id="step1">
						                        <h3>Step one</h3><br>
							                        <div class="form-group">
								          				<label for="date">Alamat Tujuan</label>
								          				<textarea class="form-control" name="alamat_pengiriman" id="" cols="30" rows="5"></textarea>
								          			</div>
								          			<div class="form-group">
									                  <label for="amount">Kecamatan Pengiriman</label> <!-- for di dalem lebel itu merujuk pada id -->
									                  <input type="text" name="kecamatan_pengiriman" id="amount" class="form-control" required="" value="">
									                </div>
									                <div class="form-group">
									                  <label for="id_finance_type">Provinsi Tujuan</label>
									                  <select name="provinsi_Tujuan" id="idjs" class="form-control">
									                   @foreach(App\Master_provinsi::all() as $item) 
									                      <option value="{{$item->id}}">{{$item->nama}}</option>
									                   @endforeach  
									                  </select>
									                </div>
									                <div class="form-group">
									                  <label for="id_finance_type">Kota Tujuan</label>
									                  <select name="provinsi_Tujuan" id="destination" class="form-control">
									                   @foreach(App\Master_kota::all() as $item) 
									                      <option value="{{$item->id}}">{{$item->nama}}</option>
									                   @endforeach  
									                  </select>
									                </div>
									                <div class="form-group">
									                  <label for="description">Catatan</label>
									                  <p style="margin-left: 50px;color:red;"><b>*Optional</b></p><br>
									                  <textarea class="form-control" name="catatan_pembeli" id="" cols="30" rows="3"></textarea>
									                </div>

						                        <ul class="list-inline pull-right">
						                            <li><button type="button" class="btn btn-primary next-step">next</button></li>
						                        </ul>
						                    </div>
						                    <div class="tab-pane" role="tabpanel" id="step2">
						                        <h3>Step two</h3><br><br>
						                        <div class="form-group">
		
		<select class="form-control" name="jasa_pengiriman" id="courier">
							    	<option value="">Pilih Kurir</option>
							    	<option selected value="jne">JNE</option>
							    	<option value="pos">POS</option>
							    	<option value="tiki">TIKI</option>
							    </select>
									                </div>
									                <div class="form-group">
									                  <label for="amount">Waktu Pengiriman</label> <!-- for di dalem lebel itu merujuk pada id -->
									                  <input type="date" name="waktu_pengiriman" id="amount" class="form-control" required="" value="">
									                </div>
									                <div class="form-group">
									                  <label for="amount">Tarif Pengiriman</label> <!-- for di dalem lebel itu merujuk pada id -->
									                  <input type="text" name="tarif_pengiriman" id="amount" class="form-control" required="" value="Rp10000000">
									                </div>
						                        <ul class="list-inline pull-right">
						                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
						                            <li><button type="button" class="btn btn-primary next-step">next</button></li>
						                        </ul>
						                    </div>
						                    <div class="tab-pane" role="tabpanel" id="step3">
						                        <h3>Step three</h3><br><br>
						                        <div class="form-group">
									                  <label for="amount">Jenis Bank</label> <!-- for di dalem lebel itu merujuk pada id -->
									                  <select name="id_bank" id="" class="form-control">
									                  	<option value="1">BCA</option>
									                  	<option value="2">BNI</option>
									                  	<option value="3">BRI</option>
									                  	<option value="4">MANDIRI</option>
									                  	<option value="5">DANAMON</option>
									                  </select>
								                </div>
								                <div class="form-group">
								                  <label for="amount">Total Pembelian</label> <!-- for di dalem lebel itu merujuk pada id -->
								                  <input type="text" name="total_pembelian" id="amount" class="form-control" required="" value="">
								                </div>
								                <div class="col-md-12" style="border-color: black">
								                  <p>Total Harga</p>
								                  <br>
								                  <hr>
								                  <div class="col-md-3">
									                  <p>Total Harga(1 barang)</p>
									                  <p>Total Ongkos Kirim</p>
									              </div>   
									              <div class="col-md-3 col-md-offset-1">
									              	<p><b>Rp. 5800</b></p>
									              	<p><b>Rp. 5800</b></p>
									              </div>
								                </div>

						                        <ul class="list-inline pull-right">
						                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
						                             <a href="javascript:tampil_data('data')" class="btn btn-primary"><h4>Cek Harga Kurir</h4></a>
						                        </ul>

						                       
						                    </div>
						                    <div class="tab-pane" role="tabpanel" id="complete">
						                        <h3>Complete steps</h3>
						                        <p>You have successfully completed every steps.</p><br><br>
						                        <ul class="list-inline pull-right">
						                            <li><button type="button" class="btn btn-default prev-step">Previous</button></li>
						                            <li><button type="button" class="btn btn-primary btn-info-full next-step">Submit</button></li>
						                        </ul>
						                    </div>
						                    
						                    <div class="col-md-12">
								<div id="hasil"></div>
						</div>

						<div class="col-md-6 col-md-offset-3">
							<br><center><label><h3><b>Total Seluruh Tagihan</b></h3><br><h4>(Total Harga Barang + Biaya Pengiriman)</h4></label></center>
							<hr style="border-color: black;border: 5px;">
							<input readonly type="text" id="totalharga" name="total_pembayaran" class="form-control input-lg text-center"  value="Rp. <?= $total_pembayaran=$total ?>"><br>
						</div>
						                    <div class="clearfix"></div>
						                </div>
						            </form>
						        </div>    
						    </div>    
				        </div>
				    </div>    
			    </section>
			   </div>
			</div><br><br>



					<!---footer--->
					<div class="footer-w3l">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-3 footer-grid">
									<h4>About </h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
									<div class="social-icon">
										<a href="#"><i class="icon"></i></a>
										<a href="#"><i class="icon1"></i></a>
										<a href="#"><i class="icon2"></i></a>
										<a href="#"><i class="icon3"></i></a>
									</div>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>My Account</h4>
									<ul>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="registered.html"> Create Account </a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Information</h4>
									<ul>
										<li><a href="index.html">Home</a></li>
										<li><a href="products.html">Products</a></li>
										<li><a href="codes.html">Short Codes</a></li>
										<li><a href="mail.html">Mail Us</a></li>
										<li><a href="products1.html">products1</a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid foot">
									<h4>Contacts</h4>
									<ul>
										<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">E Comertown Rd, Westby, USA</a></li>
										<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">1 599-033-5036</a></li>
										<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com"> example@mail.com</a></li>
										
									</ul>
								</div>
							<div class="clearfix"> </div>
							</div>
							
						</div>
					</div>
					<!---footer--->
					<!--copy-->
					<div class="copy-section">
						<div class="container">
							<div class="copy-left">
								<p>&copy; 2016 New Shop . All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></p>
							</div>
							<div class="copy-right">
								<img src="images/card.png" alt=""/>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>

					<script>
						function tampil_data(data){
						      var w = <?= $origin ?>;
						      var x = $('#destination').val();
						      var y = <?= $totalberat ?>;
						      var z = $('#courier').val();

						      $.ajax({
						          url: "{{ route('admin.checkout.getcost') }}",
						          type: "GET", 
						          data : {origin: w, destination: x, berat: y, courier: z},
						          success: function (ajaxData){
						              $('#tombol_export').show();
						              $('#hasilReport').show();
						              $("#hasil").html(ajaxData);}});};

							$( document ).ready(function() {
								var total = <?= $total_pembayaran=$total ?>;
    						console.log( "ready!" );
								$( "form" ).on('click', '.kurir' ,function(e) {
									var harga = parseInt($('input[name=data_pengiriman]:checked').val().split('_')[0]);
									$('#totalharga').val(total + harga);
								});
						});
					</script>
				<!--copy-->
				<script>
					$(document).ready(function () {
    //Initialize tooltips
    $('.nav-tabs > li a[title]').tooltip();
    
    //Wizard
    $('a[data-toggle="tab"]').on('show.bs.tab', function (e) {

        var $target = $(e.target);
    
        if ($target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function (e) {

        var $active = $('.wizard .nav-tabs li.active');
        $active.next().removeClass('disabled');
        nextTab($active);

    });
    $(".prev-step").click(function (e) {

        var $active = $('.wizard .nav-tabs li.active');
        prevTab($active);

    });
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}
function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}
				</script>
				
</body>
</html>