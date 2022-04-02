<?php

namespace App\Controllers;

use App\Models\LandingPage;

class Bestsallers extends BaseController
{
    protected $LandingPage;
    public function __construct()
    {
        $this->LandingPage = new LandingPage();
    }
    public function product()
    {
        $data = [
            'tittle' => 'bestsallers | Sonyunara',
            'bestsaller' => $this->LandingPage->findAll()
        ];
        return view('bestsallers/index', $data);
    }
}
