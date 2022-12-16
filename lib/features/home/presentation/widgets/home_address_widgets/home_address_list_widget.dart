import 'package:flutter/material.dart';
import 'package:job_task/features/home/domain/entities/address.dart';

import 'home_address_widget.dart';




// list of address consist of one widget(home address)
class HomeAddressListWidget extends StatelessWidget {
  const HomeAddressListWidget({Key? key, required this.addresses}) : super(key: key);
  final List<Address> addresses;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: List.generate(2, (index) =>
        // home address widget
            HomeAddressWidget(
              title: addresses[index].title,
              address:addresses[index].address
            )
        ),
      ),
    );
  }
}
