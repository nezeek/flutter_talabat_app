import 'package:flutter/material.dart';
import '../models/menu.dart';

class Categories extends SliverPersistentHeaderDelegate {
  final ValueChanged<int> onChanged;
  final int selectedIndex;

  Categories({required this.onChanged, required this.selectedIndex});
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        height: 52,
        color: Colors.white,
        child: ResturantCategories(
            onChanged: onChanged, selectedIndex: selectedIndex));
  }

  @override
  double get maxExtent => 52;

  @override
  double get minExtent => 52;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}

class ResturantCategories extends StatefulWidget {
  const ResturantCategories(
      {super.key, required this.onChanged, required this.selectedIndex});

  final ValueChanged<int> onChanged;
  final int selectedIndex;

  @override
  State<ResturantCategories> createState() => _ResturantCategoriesState();
}

class _ResturantCategoriesState extends State<ResturantCategories> {
  late ScrollController controller;

  @override
  void initState() {
    controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant ResturantCategories oldWidget) {
    controller.animateTo(
      80.0 * widget.selectedIndex,
      duration: const Duration(milliseconds: 200),
      curve: Curves.ease,
    );
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: SingleChildScrollView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
              demoCategoryMenus.length,
              (index) => Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: TextButton(
                      onPressed: () {
                        widget.onChanged(index);
                      },
                      style: TextButton.styleFrom(
                          primary: widget.selectedIndex == index
                              ? Colors.orange
                              : Colors.black45),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: widget.selectedIndex == index ? 2.0 : 0,
                                color: widget.selectedIndex == index
                                    ? Colors.orange
                                    : Colors.transparent),
                          ),
                        ),
                        child: Text(
                          demoCategoryMenus[index].category,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  )),
        ),
      ),
    );
  }
}
