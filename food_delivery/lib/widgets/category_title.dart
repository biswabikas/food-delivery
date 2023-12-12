import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({
    super.key,
    this.title,
    this.active = false,
  });
  final String? title;
  final bool active;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 30),
      child: Text(
        title!,
        style: Theme.of(context).textTheme.labelSmall!.copyWith(
              color: active ? kPrimaryColor : kTextColor.withOpacity(.4),
            ),
      ),
    );
  }
}
