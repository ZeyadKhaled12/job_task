
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/general_widgets/general_title_widget.dart';
import '../../cart_model.dart';
import '../controller/controller.dart';
import '../widgets/cart_widget.dart';


//dummy data of  this  screen
const List<String> _titles = ['Turkish Steak', 'Salmon', 'Red Juice', 'Cola'];
const List<String> _types = ['173 Grams', '2 Serving', '1 Bottle', '1 Bottle'];
const List<Color> _colors = [
  Color(0XFFF9BDAD),
  Color(0XFFB0EAFD),
  Color(0XFFFF9DC2),
  Color(0XFFCCB8FF)
];
final List<double> _salaries = [12.5, 30, 8, 5.5];

//cart screen
class CartScreen extends StatelessWidget {
  final cartController = Get.put(CartController());
  CartScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return GeneralTitleWidget(
        title: 'Mustafa St.',
        widget: Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(padding: EdgeInsets.only(top: 34)),
                const Text('Cart',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22)),
                const Padding(padding: EdgeInsets.only(bottom: 34)),

                // list of carts
                Flexible(
                    child: GetBuilder<CartController>(
                      builder: (controller) => ListView.builder(
                          itemBuilder: (ctx, index) {
                            final CartModel cartModel = cartController.carts[index];
                            return CartWidget(
                              count: cartModel.value,
                              colorOfCart: _colors[index],
                              title: _titles[index],
                              salary: cartModel.salary,
                              addFun: (){
                                cartModel.value++;
                                cartModel.salary =  cartModel.salary + _salaries[index];
                                controller.update();
                              },
                              minusFun: (){
                                if(cartModel.value> 0) {
                                  cartModel.value--;
                                  cartModel.salary = cartModel.salary - _salaries[index];
                                  controller.update();
                                }
                              },
                              type: _types[index],
                            );
                          },
                          itemCount: controller.carts.length),
                    ))
              ],
            ),
          ),
        ));
  }
}
