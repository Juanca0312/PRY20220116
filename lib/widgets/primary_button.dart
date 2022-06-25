import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String? text;
  const PrimaryButton({Key? key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200, // <-- Your width
      height: 50, // <-- Your height
      child: ElevatedButton(
        onPressed: () {},
        child: Text(text!,
            style: Theme.of(context).textTheme.headline2),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent)
        ),
      ),
    );
  }
}
