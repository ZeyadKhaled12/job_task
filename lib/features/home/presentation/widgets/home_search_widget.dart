
import 'package:flutter/material.dart';


//search widget

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.withOpacity(0.3), width: 2),
          color: Colors.grey.withOpacity(0.2)
        ),
        height: 60,
        width: double.infinity,
        child: const TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, color: Colors.black,size: 25),
            border: InputBorder.none,
            hintText: 'Search in thousands of products',
            hintStyle: TextStyle(color: Colors.black, fontSize: 18)
          ),
        ),
      ),
    );
  }
}
