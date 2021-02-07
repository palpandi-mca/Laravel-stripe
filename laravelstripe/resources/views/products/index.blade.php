@extends('layouts.app')
@section('content')
<div id='page-wrapper'>

	<div class='row'>
		<div class='col-lg-12'>
			<div class='panel panel-default'>
				<div class='panel-heading'><h4>Products</h4></div>
				<div class='panel-body'>
					<div class='dataTable_wrapper' id='prod_list'>
						@include('products.list',[
							'products'=>$products
						])
					</div>
				</div>
			</div>
		</div>
	</div>

</div>
@endsection