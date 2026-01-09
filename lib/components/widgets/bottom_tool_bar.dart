import 'package:flutter/material.dart';
import 'bottom_nav_items.dart';

class BottomToolBar extends StatefulWidget {
  const BottomToolBar({super.key});
  @override
  State<BottomToolBar> createState() => _BottomToolBarState();
}

class _BottomToolBarState extends State<BottomToolBar> {
  int selectedIndex = 3;

  Color itemColor(int index) {
    return selectedIndex == index ? Colors.green : Colors.black;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 70,
      width: double.infinity,

      //color: Colors.blue,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(bottomNavItems.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },

            child: Container(
              width: 60.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(bottomNavItems[index]['icon'], color: itemColor(index)),
                  //const SizedBox(height: 4.0),
                  Text(
                    bottomNavItems[index]['label'],
                    style: TextStyle(color: itemColor(index), fontSize: 11.0),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
