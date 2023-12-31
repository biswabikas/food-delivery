import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    super.key,
    required this.title,
    required this.image,
    required this.calories,
    required this.description,
    required this.price,
    required this.press,
  });
  final String title, image, calories, description;
  final int price;
  final void Function() press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: 400,
        width: 250,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                height: 380,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(34),
                  color: kPrimaryColor.withOpacity(.06),
                ),
              ),
            ),
            Positioned(
              left: 10,
              top: 10,
              child: Container(
                height: 181,
                width: 181,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(.15),
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: -50,
              child: Container(
                height: 184,
                width: 276,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 8,
              top: 80,
              child: Text(
                '\$$price',
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: kPrimaryColor),
              ),
            ),
            Positioned(
              top: 201,
              left: 40,
              child: SizedBox(
                width: 201,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'with red tomato',
                      style: TextStyle(color: kTextColor.withOpacity(.4)),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(
                      description,
                      maxLines: 3,
                      style: TextStyle(
                        color: kTextColor.withOpacity(.65),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Text(calories)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
