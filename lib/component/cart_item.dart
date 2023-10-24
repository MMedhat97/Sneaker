import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker/models/cart.dart';
import 'package:sneaker/models/shoe.dart';


class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({super.key,required this.shoe});



  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {


  //remove coffee from cart
  void removeFromCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(shoe);

    showDialog(context: context, builder: (context)=>const AlertDialog(
      title: Text("Removed from your cart "),
    ));


  }

  //pay button tapped
  void payNow() {
    /*

          fill out your payment services here


     */
  }
  
  
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.grey[100],borderRadius: BorderRadius.circular(12)),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(widget.shoe.imagepath),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(onPressed: ()=>removeFromCart, icon:Icon(Icons.delete) ),
      ),
    );
  }
}
