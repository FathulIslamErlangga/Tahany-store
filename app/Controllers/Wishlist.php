<?php

namespace App\Controllers;

class Wishlist extends BaseController
{
    public function index()
    {
        $data = [
            'tittle' => 'Sonyunara wishlist',
        ];
        return view('wishlist/index', $data);
    }
}
