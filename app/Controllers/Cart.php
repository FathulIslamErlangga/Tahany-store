<?php

namespace App\Controllers;

class Cart extends BaseController
{
    public function index()
    {
        $data = [
            'tittle' => 'Sonyunara cart',
        ];
        return view('cart/index', $data);
    }
}
