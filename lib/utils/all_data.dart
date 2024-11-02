import 'package:flutter/material.dart';

List<Map<String, dynamic>> promo = [
  {
    'image': 'discountbaner.png',
    'judul': 'back to school',
    'detail':
        'Promo Back to School New Year Sale di Lazada dapatkan Diskon hingga 80%. Promo berlaku hingga 11 Januari 2022. Kembali ke sekolah, udah beli perlengkapan belum? Lazadianz! Spesial promo tahun baru, Lazada punya penawaran menarik untuk melengkapi kamu kembali ke sekolah. Dapatkan diskon hingga 80%, voucher 22rb, dan gratis ongkir, belanja sekarang! *S&K berlaku',
  },
  {
    'image': 'discount2.png',
    'judul': 'special offer',
    'detail':
        'Dapatkan potogan harga hingga Rp5juta TANPA KUOTA terbatas! Promo ini berlaku sampai 7 Januari 2024. Buruan tangkap promonya, catat tanggalnya, dan jangan sampai terlewatkan hematnya!',
  },
  {
    'image': 'discount3.png',
    'judul': 'Super Mega Sale',
    'detail':
        'SUPER MEGA SALE Nama Event: SUPER MEGA SALE Tanggal: 29 Juni s/d 1 Juli 2022 Durasi: 3 Hari | Rabu, Kamis, Jumat Pukul: 10.00 s/d 18.00 WIB Tempat: MENARA JAMSOSTEKLokasi: Lantai Dasar Gedung Alamat: Jalan Jenderal Gatot Subroto No.39, Jakarta Kateogri Produk: Fasion, Apprreal, Handicraft, Hijab, Jewelery, Batik, Aksessoris, Kids wear, Home living, Tas, Sepatu, Multi produk, dan Kuliner, dan lainnya. Target market; +- 4.000an 2 Tower, Menara Utara dan Menara Selatan di MENARA JAMSOSTEK Bersebelahan langsung dengan Wisma Mulia, Gd TifaPartisipasi; 1. Perusaahaan 2. Perorangan Fasilitas: Meja 1pcs, Kursi 2pcs, Keamanan, Penerangan, Kebersihan, AC Central Informasi pemesanan: Mrs. Lina 0812-8007-9048',
  },
  {
    'image': 'discount4.png',
    'judul': 'special offer',
    'detail':
        'In one of UAE\'s business districts, 2 miles from the World Trade Center, this hotel offers a free shuttle to the beach and shopping malls.Holiday Inn Express Dubai’s rooms are decorated in sandy brown tones and fitted with deluxe bedding. The living area features a loose-back sofa and TV with access to multilingual channels.At Holiday Inn Dubai, the front desk is open throughout the day, and the attentive staff can organize outdoor excursions, including desert safaris.Guests can order light snacks and sandwiches at the Lobby bar. It offers music entertainment and a range of wines and draft beers. Warm drinks, smoothies and fruit drinks made from fresh ingredients are available. A hot buffet breakfast is served daily.Holiday Inn Express Dubai is a 20 minute drive from Dubai Airport. Set near Port Rashid Docks, it is a 10 minute drive from Dubai Maritime City, Dubai city center and Burj Khalifa.Couples in particular like the location – they rated it 9.4 for a four-person trip.',
  },
  {
    'image': 'discount5.png',
    'judul': 'special offer',
    'detail':
        'In one of UAE\'s business districts, 2 miles from the World Trade Center, this hotel offers a free shuttle to the beach and shopping malls.Holiday Inn Express Dubai’s rooms are decorated in sandy brown tones and fitted with deluxe bedding. The living area features a loose-back sofa and TV with access to multilingual channels.At Holiday Inn Dubai, the front desk is open throughout the day, and the attentive staff can organize outdoor excursions, including desert safaris.Guests can order light snacks and sandwiches at the Lobby bar. It offers music entertainment and a range of wines and draft beers. Warm drinks, smoothies and fruit drinks made from fresh ingredients are available. A hot buffet breakfast is served daily.Holiday Inn Express Dubai is a 20 minute drive from Dubai Airport. Set near Port Rashid Docks, it is a 10 minute drive from Dubai Maritime City, Dubai city center and Burj Khalifa.Couples in particular like the location – they rated it 9.4 for a four-person trip.',
  },
];

List<Map<String, dynamic>> history = [
  {
    'profileInitial':
        Icon(Icons.account_balance_sharp),
    'sourceName':'m-banking',
    'status': 'failed',
    'amount': '-Rp.250.000',
    'date': '12 Sep 2022, 12:12',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp), // Already an Icon
    'status': 'success',
    'amount': 'Rp.320.000',
    'date': '18 Aug 2021, 08:45',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.75.000',
    'date': '04 Jul 2020, 10:23',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.540.000',
    'date': '21 Oct 2023, 11:14',
  },
  {
    'profileInitial':
        CircleAvatar(radius: 15, child: Text('RW')), // This is CircleAvatar
    'status': 'success',
    'amount': '-Rp.99.000',
    'date': '30 Dec 2022, 09:38',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.450.000',
    'date': '15 May 2021, 14:50',
  },
  {
    'profileInitial': CircleAvatar(child: Text('ZY')),
    'status': 'success',
    'amount': '-Rp.150.000',
    'date': '03 Jan 2020, 17:22',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.600.000',
    'date': '27 Jun 2023, 13:01',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.200.000',
    'date': '09 Nov 2021, 07:40',
  },
  {
    'profileInitial': CircleAvatar(child: Text('CP')),
    'status': 'success',
    'amount': '-Rp.720.000',
    'date': '22 Feb 2023, 16:15',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.180.000',
    'date': '17 Apr 2020, 19:31',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.1.200.000',
    'date': '08 Sep 2022, 22:58',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.650.000',
    'date': '14 Aug 2021, 12:06',
  },
  {
    'profileInitial': CircleAvatar(radius: 50, child: Text('PY')),
    'status': 'success',
    'amount': '-Rp.900.000',
    'date': '19 Mar 2023, 15:45',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.410.000',
    'date': '25 Oct 2020, 11:20',
  },
  {
    'profileInitial': CircleAvatar(child: Text('QW')),
    'status': 'success',
    'amount': '-Rp.1.500.000',
    'date': '01 Dec 2023, 08:10',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.230.000',
    'date': '11 Jan 2019, 17:03',
  },
  {
    'profileInitial': CircleAvatar(child: Text('TR')),
    'status': 'success',
    'amount': '-Rp.700.000',
    'date': '24 Sep 2020, 09:58',
  },
  {
    'profileInitial': Icon(Icons.store_mall_directory_sharp),
    'status': 'success',
    'amount': 'Rp.560.000',
    'date': '20 Feb 2023, 18:44',
  },
  {
    'profileInitial': CircleAvatar(child: Text('DS')),
    'status': 'failed',
    'amount': '-Rp.980.000',
    'date': '07 Jul 2021, 21:32',
  },
];

List<Map<String, dynamic>> dropdownItemsTopup = [
  {'value': 'mobile bank', 'icon': Icons.account_balance_sharp},
  {'value': 'minimarket', 'icon': Icons.store_mall_directory_sharp},
];
