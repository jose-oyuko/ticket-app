import 'package:flutter/material.dart';

class SearchTextContainer extends StatelessWidget {
  final String text;
  final Color color;
  final bool right;
  const SearchTextContainer({
    super.key,
    required this.text,
    required this.color,
    this.right = true,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7),
      width: size.width * .44,
      decoration: BoxDecoration(
        color: color,
        borderRadius:
            right == true
                ? const BorderRadius.horizontal(right: Radius.circular(50))
                : const BorderRadius.horizontal(left: Radius.circular(50)),
      ),
      child: Center(child: Text(text)),
    );
  }
}
