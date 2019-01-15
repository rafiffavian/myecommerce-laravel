@extends('layouts.index')

@section('produk')
	<!--banner-bottom-->
			<!--new-arrivals-->
				<div class="new-arrivals-w3agile">
					<div class="container">
						<h2 class="tittle">Arrivals</h2>
						<div class="arrivals-grids">
							

						@foreach($data_produk as $item)	
						<form action="{{ route('admin.store')}}" method="post">	
						@csrf			
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal3">
												<div class="grid-img">
													<img  src="{{url($item->gambar)}}" class="img-responsive" alt="">
												</div>
												{{-- <div class="grid-img">
													<img  src="images/p9.jpg" class="img-responsive"  alt="">
												</div>			 --}}
											</a>		
										</figure>	
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">{{$item->nama_produk}}</a></h6>
										<input type="hidden" name="id_produk" value="{{$item->id}}">
										<span class="size">{{$item->berat}} kg</span>
										<p ><del>$100.00</del><em class="item_price">Rp. {{$item->harga}}</em></p>
										<button data-text="Add To Cart" class="my-cart-b item_add" type="submit">Add To Cart</button>
										{{-- <a href="#" data-text="Add To Cart" class="my-cart-b item_add"></a> --}}
									</div>
								</div>
							</div>
						</form>				
						@endforeach
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--new-arrivals-->
@endsection	