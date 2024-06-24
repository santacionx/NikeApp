import 'package:flutter/material.dart';
import 'package:sneakershop/models/shoe.dart';

class Cart extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        price: '236',
        imagePath: 'lib/images/ZoomFreak.png',
        description:
            'Take over the game with Giannis Antetokounmpos debut signature shoe.'),
    Shoe(
        name: 'AirJodan',
        price: '220',
        imagePath: 'lib/images/AirJordan.png',
        description: 'It\'s not over until you hear that buzzer. '),
    Shoe(
        name: 'KD Treys',
        price: '240',
        imagePath: 'lib/images/KDTREY.png',
        description:
            'With its lightweight upper and plush support system, the KD Trey 5 X .'),
    Shoe(
        name: 'kyrie',
        price: '190',
        imagePath: 'lib/images/kyrie.png',
        description:
            'Kyrie Irving plays the game as if he were a director starring in his own movie. ')
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

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
