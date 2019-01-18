@extends('layouts.tamplatecheckout')

@section('checkout')
@foreach(Auth::user()->Keranjang()->get() as $k)
{{-- {{dd($k)}} --}}
	<div class="content">
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
									 <img src="{{url($k->Produk->gambar)}}" class="img-responsive" alt="">
								</div>
							   <div class="cart-item-info">
								<h3>{{$k->Produk->nama_produk}} <span>Pickup time:</span></h3>
								<ul class="qty">
									<li><p>Berat:</p></li>
									<li><p>{{$k->Produk->berat}}&nbsp;Kg</p></li><br><br>	
									<li><p>Quantity:</p></li>
									<li><p>{{$k->quantity}}</p></li>
								</ul>
									 <div class="delivery">
									 <b><p>Harga : Rp. {{$k->Produk->harga}}</p></b>
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
		</div>
	@endforeach
@endsection		