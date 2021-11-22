import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thrive/constants/constants.dart';

class SelectPassword extends StatefulWidget {
  const SelectPassword({Key? key}) : super(key: key);

  @override
  _SelectPasswordState createState() => _SelectPasswordState();
}

class _SelectPasswordState extends State<SelectPassword> {
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
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "All fields are required unless indicated",
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
                          obscureText: true,
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            // label: const Text("Email"),
                            hintText: "Password",
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
                            hintText: "Confirm Password",
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

                      const SizedBox(height: defaultPadding + 50),

                      ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          'Sign Up',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
