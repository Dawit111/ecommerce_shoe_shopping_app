import 'package:ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '236',
        imagePath: 'lib/images/shoe1.jpg',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: 'Air Jordans',
        price: '220',
        imagePath: 'lib/images/shoe2.jpg',
        description:
            'you\'ve got the hopes and the speed-lace up in the shoes that enhances you in the court'),
    Shoe(
        name: 'KD trays',
        price: '251',
        imagePath: 'lib/images/shoe3.jpg',
        description:
            'A secure mid foot strap is suited for scoring bings and defensive mechanisms for long journey'),
    Shoe(
        name: 'Keyrie 6',
        price: '190',
        imagePath: 'lib/images/shoe4.jpg',
        description:
            'Bouncy coushioning is is paired with soft yet supportive foam for leassures'),
  ];

  // list of items in the users's cart

  List<Shoe> userCart = [];

  // get list of shoes for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add item to the cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
