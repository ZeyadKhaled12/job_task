import 'package:flutter/material.dart';
import 'package:job_task/features/home/domain/entities/category.dart';




//display categories to ui widget
const List<Color> colors = [
  Color(0XFFF9BDAD),
  Color(0XFFFAD96D),
  Color(0XFFCCB8FF),
  Color(0XFFB0EAFD),
  Color(0XFFFF9DC2)
];

class HomeCategoriesWidget extends StatelessWidget {
  const HomeCategoriesWidget({Key? key, required this.categories}) : super(key: key);
  final List<Category> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 160,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Explore by Category',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18)),
              Padding(
                  padding: const EdgeInsets.only(right: 32),
                  child: Text('See All (${categories.length})',
                      style: const TextStyle(color: Colors.black)))
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 26)),
          Expanded(
            child: ListView.builder(
                itemBuilder: (ctx, index) {
                  return category(categories[index].title, colors[index]);
                },
                itemCount: categories.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true),
          )
        ],
      ),
    );
  }
}

Widget category(String title, Color color) {
  return Padding(
    padding: const EdgeInsets.only(right: 26),
    child: Column(
      children: [
        Container(
          height: 75,
          width: 75,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              color: color),
        ),
        const Padding(padding: EdgeInsets.only(top: 10)),
        Text(title, style: const TextStyle(color: Colors.black))
      ],
    ),
  );
}
