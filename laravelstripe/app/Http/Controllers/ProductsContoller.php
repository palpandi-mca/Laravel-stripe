<?php

namespace App\Http\Controllers;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\View;
use Session;
use Stripe;
class ProductsContoller extends Controller
{
    public function index(){

    	$products = Product::all();
    	return View::make('products.index')->with(
    		array(
    		'products' => $products
    	));
    }

    public function paynow($id=0){

    	
    	$product = Product::find($id);
    	return View::make('products.stripe')->with(
    		array(
    			'product'=>$product
    		));
    }

    public function stripePaid(Request $request){
    	$product = $request->get('product_id',0);
    	$pay_amt = $request->get('product_price',0);
    
		$cust_name = $request->get('card_name','');
    	Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
    	$email = "pandi.kdm@gmail.com";
		$customer = \Stripe\Customer::create([
		    'name' => $cust_name,
		    'email' => $email,
		    'address' => [
		        'line1' => 'Thiruvanmiyur',
		        'postal_code' => '600041',
		        'city' => 'Chennai',
		        'state' => 'Tamilnadu',
		        'country' => 'India',
		    ],
		]);

		\Stripe\Customer::createSource(
		    $customer->id,
		    ['source' => $request->stripeToken]
		);

        Stripe\Charge::create ([
        		'customer' => $customer->id, 
                "amount" => $pay_amt * 100,
                "currency" => "inr",
                "description" => "Test payment ",
        ]);
  
        return view('payment.success');
    }


}

