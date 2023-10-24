import 'package:flutter/foundation.dart';
import 'package:sneaker/models/shoe.dart';

class Cart extends ChangeNotifier{

  //list of shoes for sale
  List<Shoe> ShoeShop=[
    Shoe(name: "Zoom FREAK",
        price: "260",
        description: "The forward-thinking design of his latest signature shoe.",
        imagepath: "lib/images/zoomfreak.png"),

    Shoe(name: "Air Jordan",
        price: "270",
        description: "You\ 've got the hops and the speed-lace up in shoes that enhance\ what you bring to the court ",
        imagepath: 'lib/images/airjordan.png'),

    Shoe(name: "KD Treys",
        price: "280",
        description: "A secure midfoot strap is suited for scoring binges and defensive",
        imagepath: "lib/images/kdtrey.png"),

    Shoe(name: "Kyrie 6",
        price: "290",
        description: "Bouncy cushioning is paired with soft yet supportive foam for responsive",
        imagepath: "lib/images/kyrie.png"),
  ];

  //list of items in user cart
  List<Shoe> userCart=[];


  //get list of shoes for sale
  List<Shoe> getShoeList(){
    return ShoeShop;
  }

  //get cart
  List<Shoe> getUserCart(){
    return userCart;
  }


  //add items to cart
  void addItemToCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from  cart
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }



}