import 'package:flutter/material.dart';


//home address widget

class HomeAddressWidget extends StatelessWidget {
  const HomeAddressWidget(
      {Key? key, required this.title, required this.address})
      : super(key: key);
  final String title;
  final String address;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(0.3)),
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 68,
              width: 68,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22),
                  color: const Color(0XFFD7D7D7)),
            ),
            const Padding(padding: EdgeInsets.only(right: 20)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold)),
                const Padding(padding: EdgeInsets.only(bottom: 5)),
                Text(address,
                    style: const TextStyle(color: Colors.grey, fontSize: 15)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
