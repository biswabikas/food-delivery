import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/constants.dart';
import 'package:food_delivery/details_screen.dart';
import 'package:food_delivery/widgets/category_title.dart';
import 'package:food_delivery/widgets/food_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: kPrimaryColor,
        textTheme: const TextTheme(
            headlineSmall: TextStyle(fontWeight: FontWeight.bold),
            labelSmall: TextStyle(fontWeight: FontWeight.bold),
            titleSmall: TextStyle(fontWeight: FontWeight.bold)),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kPrimaryColor.withOpacity(.26),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          height: 60,
          width: 60,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: kPrimaryColor),
          child: SvgPicture.asset('assets/icons/plus.svg'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50, right: 20),
            child: Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset(
                'assets/icons/menu.svg',
                height: 11,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'simple way to find\ntasty food',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                CategoryTitle(
                  title: 'All',
                  active: true,
                ),
                CategoryTitle(
                  title: 'Italian',
                  active: false,
                ),
                CategoryTitle(
                  title: 'Asian',
                  active: false,
                ),
                CategoryTitle(
                  title: 'Chinese',
                  active: false,
                ),
                CategoryTitle(
                  title: 'Burgers',
                  active: false,
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            height: 50,
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: kBorderColor),
            ),
            child: SvgPicture.asset(
              'assets/icons/search.svg',
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  image: 'assets/images/image_1.png',
                  calories: '420Kcal',
                  description:
                      'Contrary to the popular belief ,lorem ipsum is not the random text.It has roots',
                  price: 20,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                      ),
                    );
                  },
                ),
                FoodCard(
                  title: 'Vegan Salad Bowl',
                  image: 'assets/images/image_1.png',
                  calories: '420Kcal',
                  description:
                      'Contrary to the popular belief ,lorem ipsum is not the random text.It has roots',
                  price: 20,
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailsScreen(),
                      ),
                    );
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
