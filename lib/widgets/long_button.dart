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
          onPressed: () => onPressed(),
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

class LongButtonAlternative extends StatelessWidget {
  const LongButtonAlternative({
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
    return GestureDetector(
      onTap: () => onPressed(),
      child: Container(
        margin: EdgeInsets.all(8),
        height: 42,
        constraints: BoxConstraints(
          minWidth: 200,
        ),
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Center(
          child: Text(buttonLabel),
        ),
      ),
    );
  }
}
