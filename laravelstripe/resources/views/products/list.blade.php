
	<table class='table table-bordered table-stripped fe-grid-table' 
		id='dataTables-example'>
		<thead>
			<tr>
				<th>Name</th>
				<th>Price</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			@if(isset($products) && count($products) >0)
				@foreach($products as $product)
				<tr>
					<td>{{ $product->f_product_name }}</td>
					<td>{{ $product->f_price }}</td>
					<td>
						<a href="{{url('/paynow/'.$product->f_product_id)}}">
	   						<input type="button" value="Paynow" />
						</a>
					</td>
				</tr>
				@endforeach
			@endif
	</tbody>
	</table>
