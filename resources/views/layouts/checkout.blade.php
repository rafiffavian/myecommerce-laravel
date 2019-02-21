@extends('layouts.tamplatecheckout')
		@php
			$origin = 153; 
			$totalberat = 0;
			$total = 0;	
		$i=1;
		@endphp


@section('checkout')
@foreach(Auth::user()->Keranjang()->get() as $k)
{{-- {{dd($k)}} --}}
	<div class="content">
			<div class="cart-items">
				<div class="container">
					 <h2>My Shopping Bag (3)</h2>
						<script>$(document).ready(function(c) {
							$('.close{{$i}}').on('click', function(c){
								$('.cart-{{$i}}').fadeOut('slow', function(c){
									$('.cart-{{$i}}').remove();
								});
								});	  
							});
					   </script>
					 <div class="cart-header cart-{{$i}}">
						 <a href="{{ route('admin.checkout.delete',$k->id) }}"><div class="close{{$i}}"> </div></a>
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
		
		@php
				$i++;
			$berat = $k->Produk->berat * $k->quantity;
			$totalberat = $totalberat + $berat;

			$harga = $k->Produk->harga * $k->quantity;
			$total = $total + $harga;

 
		@endphp

	@endforeach
		
@endsection		