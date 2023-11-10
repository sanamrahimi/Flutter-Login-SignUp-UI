import 'package:login_signup_page/app/all_screens.dart';

class CustomHeader extends StatefulWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  State<CustomHeader> createState() => _CustomHeaderState();
}

class _CustomHeaderState extends State<CustomHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(
          height: 50,
          width: 50,
          image: AssetImage('assets/images/logo.png'),
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Maintanance',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Rubic Medium',
                color: Colors.black,
              ),
            ),
            Text(
              'Box',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Rubic Medium',
                color: kPrimaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
