import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:foodapptwo/widgets/carditem.dart';
import 'package:foodapptwo/widgets/categorytext.dart';
import 'package:foodapptwo/widgets/listview_item.dart';
import 'package:foodapptwo/widgets/new_restaurant_listview_item.dart';
import 'package:foodapptwo/widgets/new_restaurant_text.dart';
import 'package:foodapptwo/widgets/newappbaritem.dart';
import 'package:foodapptwo/widgets/newsearchbar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  List<String> images = [
    "assets/Ellipse1.png",
    "assets/Ellipse2.png",
    "assets/Ellipse3.png",
    "assets/Ellipse4.png",
    "assets/Ellipse5.png",
  ];
  List<String> titles = [
    "Pizza",
    "Pan-cake",
    "Sandwich",
    "Ice-cream",
    "Noodle",
  ];
  List<String> foods = [
    "assets/burgerking.png",
    "assets/pizza.png",
    "assets/pancake.png",
  ];
  List<String> foodsname = [
    "Burger King",
    "Pizzania",
    "Pancake",
  ];
  List<String> rank = [
    "4.5",
    "4.6",
    "4.2",
  ];
  List<String> minutes = [
    "25-35 mins",
    "20-35 mins",
    "25-35 mins",
  ];
  List<String> kilometers = [
    "8 km",
    "7 km",
    "8 km",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20),
                MyappBarItem(),
                NewSearchBar(),
                SizedBox(height: 18),
                CardItem(),
                SizedBox(height: 18),
                CategoryText(),
                SizedBox(height: 10),
                Container(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return MyListViewItem(
                          imgUrl: images[index], text: titles[index]);
                    },
                  ),
                ),
                NewRestaurantText(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 359.69,
                  height: 320,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(19.39)),
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: foods.length,
                      itemBuilder: ((context, index) {
                        return NewRestaurantListviewItem(
                            img1: foods[index],
                            headline1: foodsname[index],
                            point1: rank[index],
                            minute1: minutes[index],
                            kilometer1: kilometers[index]);
                      })),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xff939393),
          currentIndex: _currentIndex,
          unselectedLabelStyle: TextStyle(color: Color(0xff939393)),
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
            // Pages();
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                width: 48.48,
                height: 48.48,
                decoration: BoxDecoration(
                  color: _currentIndex == 0 ? Colors.black : Colors.white,
                  shape: BoxShape.circle,
                ),
                child: ImageIcon(
                  AssetImage("assets/home.png"),
                ),
              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.48,
                height: 48.48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == 1 ? Colors.black : Colors.white,
                ),
                child: ImageIcon(
                  AssetImage("assets/favorite.png"),
                ),
              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.48,
                height: 48.48,
                decoration: BoxDecoration(
                    color: _currentIndex == 2 ? Colors.black : Colors.white,
                    shape: BoxShape.circle),
                child: ImageIcon(
                  AssetImage("assets/shopping.png"),
                ),
              ),
              label: " ",
            ),
            BottomNavigationBarItem(
              icon: Container(
                width: 48.48,
                height: 48.48,
                decoration: BoxDecoration(
                    color: _currentIndex == 3 ? Colors.black : Colors.white,
                    shape: BoxShape.circle),
                child: ImageIcon(
                  AssetImage("assets/profile.png"),
                ),
              ),
              label: " ",
            ),
          ]),
    );
  }
}
