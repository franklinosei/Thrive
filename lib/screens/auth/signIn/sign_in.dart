import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';
import 'package:thrive/screens/home/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  bool _loading = false;
  String email = '';
  String password = '';
  bool obscure = true;
  bool tapped = false;
  bool pas_tapped = false;

  final _node = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome, let's sign you in",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(height: defaultPadding + 10),

                // Email
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Card(
                        elevation: 2,
                        shadowColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            // label: const Text("Email"),
                            hintText: "Email or Phone",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          onFieldSubmitted: (v) {
                            FocusScope.of(context).requestFocus(_node);
                          },
                        ),
                      ),

                      //Space
                      const SizedBox(height: defaultPadding),

                      // Password
                      Card(
                        elevation: 2,
                        shadowColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          focusNode: _node,
                          obscureText: true,
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            // label: const Text("Password"),
                            hintText: "Password",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ),

                      // const SizedBox(height: defaultPadding),

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: const Text('Forgot password?'),
                          style: TextButton.styleFrom(
                            primary: ashColor,
                          ),
                        ),
                      ),

                      const SizedBox(height: defaultPadding),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: primaryColor,
                          elevation: 5,
                          shadowColor: primaryColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          padding: EdgeInsets.symmetric(
                            //This line is giving debug errors, change asap
                            horizontal: MediaQuery.of(context).size.width * 0.4,
                            vertical: 20,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: defaultPadding + 10),

                const Center(
                  child: Text(
                    "Or",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: defaultPadding + 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/google.png'),
                      style: ElevatedButton.styleFrom(
                        primary: bgColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                    // const SizedBox(width: defaultPadding),
                    ElevatedButton(
                      onPressed: () {},
                      child: Image.asset('assets/images/fb.png'),
                      style: ElevatedButton.styleFrom(
                        primary: bgColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // const SizedBox(width: defaultPadding - 5),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signup');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
