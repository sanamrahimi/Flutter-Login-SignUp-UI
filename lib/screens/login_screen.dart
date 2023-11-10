import 'package:login_signup_page/app/all_screens.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
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
                'Login',
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
                  color: Color(0xff4C5980),
                ),
              )),
              Padding(
                padding: const EdgeInsets.only(
                  top: 40,
                  left: 15,
                  right: 15,
                  bottom: 140,
                ),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                        filled: true,
                        fillColor: Color(0xffF8F9FA),
                        prefixIcon: Icon(
                          Icons.email_outlined,
                          color: Color(0xff323F4B),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffE4E7EB),
                        )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffE4E7EB),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        // hintStyle: ,
                        filled: true,

                        fillColor: Color(0xffF8F9FA),
                        prefixIcon: Icon(
                          Icons.lock_open,
                          color: Color(0xff323F4B),
                        ),
                        suffixIcon: Icon(
                          Icons.visibility_off_outlined,
                        ),

                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffE4E7EB),
                        )),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Color(0xffE4E7EB),
                        )),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgetPasswordScreen()));
                      },
                      child: const Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            'Forget password',
                            style: TextStyle(
                              fontFamily: 'Rubic Medium',
                              decoration: TextDecoration.underline,
                            ),
                          )),
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffF9703B),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Rubic Regular',
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Dont have an account?   ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Rubic Regular',
                      color: Color(0xff4C5980),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignUpScreen()),
                      );
                    },
                    child: const Text(
                      'Sign Up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Rubic Medium',
                        color: Color(0xffF9703B),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
