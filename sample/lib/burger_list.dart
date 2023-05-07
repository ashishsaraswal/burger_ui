import 'package:flutter/material.dart';
import 'burger_page.dart';

class burgerlist extends StatefulWidget {
  final int row;
  burgerlist({required this.row});

  @override
  State<burgerlist> createState() => _burgerlistState();
}

class _burgerlistState extends State<burgerlist> {
  @override
  Widget build(BuildContext context) {
    int item = 10;
    Widget baconimage = Container(
      height: 140,
      child: Image.asset("images/burger2.png"),
    );
    Widget chickenimage = Container(
      height: 130,
      child: Image.asset("images/burger3.png"),
    );
    return SliverToBoxAdapter(
      child: Container(
        height: widget.row == 2 ? 300 : 220,
        margin: EdgeInsets.only(top: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: item,
          itemBuilder: (context, index) {
            bool reverse = widget.row == 2 ? index.isEven : index.isOdd;
            return Stack(
              children: [
                Container(
                  height: 230,
                  width: 200,
                  margin:
                      EdgeInsets.only(left: 20, right: index == item ? 20 : 0),
                  child: GestureDetector(
                    onTap: () {
                      // todo navigate
                      Navigator.of(context).pushNamed(BurgerPage.tag);
                    },
                    child: Card(
                      color: Theme.of(context).primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                        child: Column(
                          children: [
                            Text(
                              reverse ? 'Veg Burger' : 'Chicken Burger',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Spacer(),
                            Row(
                              children: [
                                Spacer(),
                                Text(
                                  '15 \$',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                Spacer(),
                                Container(
                                  width: 50,
                                  height: 50,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      elevation: 3,
                      margin: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(45),
                              bottomRight: Radius.circular(15),
                              topLeft: Radius.circular(45),
                              topRight: Radius.circular(45))),
                    ),
                  ),
                ),
                Positioned(
                  top: reverse ? 60 : 50,
                  child: GestureDetector(
                    onTap: () {
                      //to do
                    },
                    child: reverse ? chickenimage : baconimage,
                  ),
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
