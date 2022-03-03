<?php

namespace App\Controllers;

class Pages extends BaseController
{
  public function index()
  {

    $data = [
      'title' => 'Home | Andri Adam',
      'tes' => ['satu', 'dua', 'tiga']
    ];
    return view('pages/home', $data);
  }

  public function about()
  {
    $data = [
      'title' => 'About me'
    ];
    return view('pages/about', $data);
  }

  public function contact()
  {
    $data = [
      'title' => 'Contact us',
      'alamat' => [
        [
          'tipe' => 'Rumah',
          'alamat' => 'JL. abc No. 123',
          'kota' => 'Tangerang'
        ],
        [
          'tipe' => 'Kantor',
          'alamat' => 'JL. Setiakawan No. 123',
          'kota' => 'Jakarta'
        ]
      ]
    ];
    return view('pages/contact', $data);
  }

  //--------------------------------------------------------------------

}
