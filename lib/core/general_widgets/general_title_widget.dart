
import 'package:flutter/material.dart';

class GeneralTitleWidget extends StatelessWidget {
  const GeneralTitleWidget(
      {Key? key, required this.title, required this.widget})
      : super(key: key);
  final String title;
  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(child: AppBar(
        backgroundColor: Colors.white,
      ),
          preferredSize: const Size.fromHeight(0)),
      body: Column(
        children: [
          const Padding(padding: EdgeInsets.only(top: 10)),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [_title(title, context), _circle()],
            ),
          ),
          widget
        ],
      ),
    );
  }
}

Widget _circle() => const CircleAvatar(
      radius: 25,
      child: CircleAvatar(
        radius: 23.5,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Color(0XFF707070),
    );

Widget _title(String title, BuildContext ctx) => Card(
      color: Theme.of(ctx).primaryColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: Row(
          children: [
            const Icon(Icons.location_on_outlined,
                color: Colors.white, size: 26),
            const Padding(padding: EdgeInsets.only(right: 8)),
            Text(title,
                style: const TextStyle(color: Colors.white, fontSize: 18))
          ],
        ),
      ),
    );
