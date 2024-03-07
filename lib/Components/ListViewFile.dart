import 'package:flutter/material.dart';

class FinanceListTile extends StatelessWidget {
  final String text;
  final Widget leadingIcon;
  final Widget trailingIcon;
  final Function() onTap;
  final Color color;
  const FinanceListTile(
      {required this.text,
      required this.leadingIcon,
      required this.trailingIcon,
      required this.onTap,
      this.color = Colors.lightBlue,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTileTheme(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4 * 0.8,
        child: ListTile(
          leading: leadingIcon,
          title: Text(
            text,
            textScaleFactor: 1,
          ),
          trailing: trailingIcon,
          selected: false,
          onTap: onTap,
        ),
      ),
      textColor: color,
      iconColor: color,
    );
  }
}
