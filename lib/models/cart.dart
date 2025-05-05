import 'package:flutter/material.dart';

import 'shoe.dart';

class cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom FREAK',
        price: '90000',
        imagePath:
            'lib/pictures/air-vapormax-2023-flyknit-electric-mens-shoes-vSm5p2.png',
        description:
            'The forward-thinking design of his latest signature shoe'),
    Shoe(
        name: 'The sports woman',
        price: '78000',
        imagePath: 'lib/pictures/air-max-270-womens-shoes-Pgb94t.png',
        description: 'The most comfortable and trendy shoes for women'),
    Shoe(
        name: 'The basket geeks',
        price: '85000',
        imagePath:
            'lib/pictures/gt-hustle-3-electric-basketball-shoes-8sVd8N.png',
        description: 'The perfect choice for a badminton match'),
    Shoe(
        name: 'Electric MEN basket',
        price: '95000',
        imagePath:
            'lib/pictures/gt-jump-2-electric-mens-basketball-shoes-CZpmDQ.png',
        description: 'The electric basket shoe'),
    Shoe(
        name: 'The cazz king',
        price: '88000',
        imagePath: 'lib/pictures/jordan-true-flight-mens-shoes-rV89fM.png',
        description:
            'The most comfortable and trendy shoes for a casual outing'),
    Shoe(
        name: 'The king',
        price: '98000',
        imagePath: 'lib/pictures/air-jordan-1-mid-mens-shoes-X5pM09.png',
        description:
            'The most comfortable and trendy shoes for  casual outing'),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
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
