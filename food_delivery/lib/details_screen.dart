import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery/constants.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/icons/backward.svg', height: 11),
                SvgPicture.asset('assets/icons/menu.svg', height: 11),
              ],
            ),
            Container(
              height: 305,
              width: 305,
              padding: const EdgeInsets.all(6),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: kSecondaryColor),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/image_1_big.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                          text: 'Vegan Salad bowl\n',
                          style: Theme.of(context).textTheme.titleSmall),
                      TextSpan(
                        text: 'with red tomatoes',
                        style: TextStyle(
                          color: kTextColor.withOpacity(.4),
                        ),
                      )
                    ],
                  ),
                ),
                Text(
                  '\$20',
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: kPrimaryColor,
                      ),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.",
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 27, vertical: 20),
                    decoration: BoxDecoration(
                      color: kPrimaryColor.withOpacity(.19),
                      borderRadius: BorderRadius.circular(27),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Add to the beg',
                          style: Theme.of(context).textTheme.labelSmall,
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        SvgPicture.asset(
                          'assets/icons/forward.svg',
                          height: 11,
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPrimaryColor.withOpacity(.26),
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(16),
                          height: 60,
                          width: 60,
                          decoration: const BoxDecoration(
                              color: kPrimaryColor, shape: BoxShape.circle),
                          child: SvgPicture.asset('assets/icons/bag.svg'),
                        ),
                        Positioned(
                          right: 15,
                          bottom: 10,
                          child: Container(
                            alignment: Alignment.center,
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: kWhiteColor),
                            child: Text(
                              '0',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    color: kPrimaryColor,
                                    fontSize: 15,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
