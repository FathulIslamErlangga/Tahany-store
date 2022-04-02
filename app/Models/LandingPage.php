<?php

namespace App\Models;

use CodeIgniter\Model;

class LandingPage extends Model
{
    // select table best sallers
    protected $table  = 'bestsaller';
    protected $useTimestamps = true;

    public function getProduct($slug = false)
    {
        // jika data detail product tidak tampil maka tampilkan semua data di database
        if ($slug == false) {
            return $this->findAll();
        }
        // mengambil id data product 
        return $this->where(['id' => $slug])->first();
    }
}
