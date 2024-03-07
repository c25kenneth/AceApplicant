import "package:flutter/material.dart";

class RoundedBadge extends StatelessWidget {
  final String title;
  final Widget icon;
  const RoundedBadge({required this.title, required this.icon, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        // color: Colors.grey.withOpacity(.25),
        // color: Color.fromRGBO(65, 105, 225, 1),
        borderRadius: BorderRadius.circular(25.0),
        // border: Border.all(color: Color.fromRGBO(65, 105, 225, 1))
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(
            width: 5,
          ),
          Text(
            title,
            style: const TextStyle(
                // color: Color.fromRGBO(65, 105, 225, 1),
                fontSize: 16,
                fontWeight: FontWeight.w300),
          )
        ],
      ),
    );
  }
}
