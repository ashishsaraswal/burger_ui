import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  int currentselect = 0;
  @override
  Widget build(BuildContext context) {
    int items = 10;
    return SliverToBoxAdapter(
      child: Container(
        height: 100,
        margin: EdgeInsets.only(top: 5),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: items,
          itemBuilder: (context, index) => Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: 90,
                    width: 90,
                    margin:
                        EdgeInsets.only(left: index == 0 ? 10 : 0, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentselect = index;
                        });
                      },
                      child: Card(
                        color: index == currentselect
                            ? Colors.black.withOpacity(0.7)
                            : Colors.white,
                        child: Icon(
                          Icons.fastfood,
                          color: index == currentselect
                              ? Colors.white
                              : Colors.black.withOpacity(0.7),
                        ),
                        elevation: 3,
                        margin: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Positioned(
                  bottom: 0,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: index == 0 ? 10 : 0,
                      right: 10,
                    ),
                    width: 90,
                    child: Row(
                      children: [
                        Spacer(),
                        Text('burger'),
                        Spacer(),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
