import 'package:login_signup_page/app/all_screens.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
          const SizedBox(
          height: 20,
            ),
            const CustomHeader(),
        const SizedBox(
          height: 20,
        ),
        const Center(
            child: Text(
              'Forgot Password',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Rubic Medium',
                color: Colors.black,
              ),
            )),
        const SizedBox(
          height: 14,
        ),
        const Center(
            child: Text(
              'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit. .',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Rubic Regular',
                color: kSecondColor,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(  top: 40,
                left: 15,
                right: 15,
                bottom: 200,),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xff323F4B),
                      ),
                      filled: true,
                      fillColor: Color(0xffF8F9FA),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE4E7EB),
                          )),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffE4E7EB),
                          )),
                      disabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPasswordScreen()));
                    },
                    child: const Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'Resend Email',
                          style: TextStyle(
                            fontFamily: 'Rubic Medium',
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ),

                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> const LoginScreen()));
              },
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: kPrimaryColor,
                ),
                child: const Center(
                  child: Text(
                    'Send Code',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubic Regular',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
