part of 'widgets.dart';

class LongButton extends StatelessWidget {
  const LongButton({
    super.key,
    required this.buttonColor,
    required this.buttonLabel,
    required this.onPressed,
  });

  final Color buttonColor;
  final String buttonLabel;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttonColor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed(),
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            buttonLabel,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
