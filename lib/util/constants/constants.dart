// import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'package:flutter/material.dart';



const String splashPath = "assets/images/splash.png";


const String dummyString = 'Item NameYour childhood teacher did not wrong you when they'
    ' taught you that there should be three, or four, or five'
    ' sentences in a paragraph. It is important to understand,'
    ' however, that the aim in teaching this was not to impart'
    ' a hard-and-fast rule of grammar, drawn from an authoritative-but-dusty'
    ' book. The true aim of this strategy was to teach you that'
    ' your ideas must be well supported to be persuasive and effective.'
    'Your childhood teacher did not wrong you when they taught you'
    ' that there should be three, or four, or five sentences in a paragraph.'
    ' It is important to understand, however, that the aim in teaching'
    ' this was not to impart a hard-and-fast rule of grammar, drawn'
    ' from an authoritative-but-dusty book. The true aim of this strategy'
    ' was to teach you that  your ideas must be well'
    ' supported to be persuasive and effective.';



// List<ProductModel> KMyProductsObject = [
//   new ProductModel(
//     '1',
//     'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     '109.95',
//     'Your perfect pack for everyday use and walks in the forest. Stash your'
//         ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
//     '#0c5763'
//   ),
//   new ProductModel(
//     '2',
//     'Mens Casual Premium Slim Fit T-Shirts',
//     '22.3',
//     'Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
//     '#35591a'
//   ),
//   new ProductModel(
//     '3',
//     'Mens Cotton Jacket',
//     '109.95',
//     'great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions, such as working, hiking, camping, mountain/rock climbing, cycling, traveling or other outdoors. Good gift choice for you or your family member. A warm hearted love to Father, husband or son in this thanksgiving or Christmas Day.',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg',
//     '#6f9390'
//   ),
//   new ProductModel(
//     '4',
//     'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     '109.95',
//     'Your perfect pack for everyday use and walks in the forest. Stash your'
//         ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/71YXzeOuslL._AC_UY879_.jpg',
//     '#0c2c63'
//   ),
//   new ProductModel(
//     '5',
//     'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     '109.95',
//     'Your perfect pack for everyday use and walks in the forest. Stash your'
//         ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/71pWzhdJNwL._AC_UL640_QL65_ML3_.jpg',
//     '#393939'
//   ),
//   new ProductModel(
//     '6',
//     'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     '109.95',
//     'Your perfect pack for everyday use and walks in the forest. Stash your'
//         ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/61sbMiUnoGL._AC_UL640_QL65_ML3_.jpg',
//     '#2e6e89'
//   ),
//   new ProductModel(
//     '7',
//     'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     '109.95',
//     'Your perfect pack for everyday use and walks in the forest. Stash your'
//         ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg',
//     '#602000'
//   ),
//   new ProductModel(
//     '8',
//     'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     '109.95',
//     'Your perfect pack for everyday use and walks in the forest. Stash your'
//         ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'men\'s clothing',
//     'https://fakestoreapi.com/img/61IBBVJvSDL._AC_SY879_.jpg',
//     '#aa8055'
//   ),
// ];



//
// const List<Map<String, String>> KMyProducts = [
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
//   {
//     'id': '1',
//     'title': 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
//     'price': '109.95',
//     'description':
//         'Your perfect pack for everyday use and walks in the forest. Stash your'
//             ' laptop (up to 15 inches) in the padded sleeve your everyday',
//     'category': 'men\'s clothing',
//     'image': 'assets/images/image1.png',
//   },
// ];
//
// const List<Map<String, String>> KInterestsData = [
//   {
//     'iconPath': 'assets/images/travel_bag_icon.png',
//   },
//   {
//     'iconPath': 'assets/images/data_management_icon.png',
//   },
//   {
//     'iconPath': 'assets/images/briefcase_icon.png',
//   },
//   {
//     'iconPath': 'assets/images/burger_icon.png',
//   },
//   {
//     'iconPath': 'assets/images/sports_balls_icon.png',
//   },
//
//   // {
//   //   'title': 'الافلام',
//   //   'iconPath': 'assets/images/video_icon.png',
//   // },
//   // {
//   //
//   //   'title': 'الاخبار',
//   //   'iconPath': 'assets/images/newspaper_icon.png',
//   // },
// ];

// class Constants {
//   static const HOURS = [
//     '07:00 - 08:00',
//     '08:00 - 09:00',
//     '09:00 - 10:00',
//     '10:00 - 11:00',
//     '11:00 - 12:00',
//     '12:00 - 13:00',
//     '13:00 - 14:00',
//     '14:00 - 15:00',
//     '15:00 - 16:00',
//     '16:00 - 17:00',
//     '17:00 - 18:00',
//     '18:00 - 19:00',
//     '19:00 - 20:00',
//     '20:00 - 21:00',
//     '21:00 - 22:00',
//     '22:00 - 23:00',
//   ];

//   static const List<LatLng> OUR_PLACES = [
//     LatLng(30.087445, 30.965556),
//     LatLng(30.072555, 30.940938),
//     LatLng(30.073248, 30.935687),
//     LatLng(30.073106, 30.934243),
//     LatLng(30.072140, 30.933551),
//     LatLng(30.069616, 30.932952),
//     LatLng(30.067108, 30.931945),
//     LatLng(30.008763, 30.981960),
//     LatLng(30.009505, 30.984537),
//     LatLng(30.008984, 30.991572),
//     LatLng(30.046957, 31.051652),
//     LatLng(30.068116, 31.015887),
//     LatLng(30.068371, 31.015764),
//     LatLng(30.083347, 30.990079),
//     LatLng(30.088255, 30.971913),
//   ];
// }
