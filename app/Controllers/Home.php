<?php

namespace App\Controllers;

use App\Models\LandingPage;
use App\Models\Brands;

class Home extends BaseController
{

	protected $LandingPage;
	protected $Brands;
	protected $helpers = ["number", "auth"];
	public function __construct()
	{
		$this->LandingPage = new LandingPage();
		$this->Brands = new Brands();
	}
	public function index()
	{
		$data = [
			'tittle' => 'Home | Sonyunara',

			// mengambil semua data dari model
			'bestsaller' => $this->LandingPage->getProduct(),
			'brands' => $this->Brands->findAll()
		];


		return view('home/home', $data);
	}

	public function details($slug)
	{

		$data = [
			'tittle' => 'Details-Product',
			'produk' => $this->LandingPage->getProduct($slug)
		];
		return view('bestsallers/details', $data);
	}

	//--------------------------------------------------------------------

}
