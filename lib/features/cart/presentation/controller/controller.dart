import 'package:get/get.dart';
import 'package:job_task/features/cart/cart_model.dart';

class CartController extends GetxController {
  var carts =
      List<CartModel>.generate(4, (index) => CartModel(salary: 0.0, value: 0))
          .obs;
}
