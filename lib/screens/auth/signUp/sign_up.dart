import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:thrive/constants/constants.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  _selectDate(BuildContext context) async {
    final DateTime? selected = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(1930),
      lastDate: DateTime(2050),
    );
    if (selected != null && selected != selectedDate) {
      setState(() {
        selectedDate = selected;
        isSelectDoB = true;
      });
    }
  }

  final _formKey = GlobalKey<FormState>();

  String dropdownValue = 'Male';
  bool _loading = false;
  String email = '';
  String dateOfBirth = '';
  String password = '';
  bool obscure = true;
  bool tapped = false;
  bool pas_tapped = false;

  bool isSelectDoB = false;

  String date = "";
  DateTime selectedDate = DateTime.now();

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

                // Name
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
                            label: const Text("Name"),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (val) {
                            setState(() {
                              email = val;
                            });
                          },
                          // onFieldSubmitted: (v) {
                          //   FocusScope.of(context).requestFocus(_node);
                          // },
                        ),
                      ),

                      //Space
                      const SizedBox(height: defaultPadding),

                      // Email
                      Card(
                        elevation: 2,
                        shadowColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          // focusNode: _node,
                          // obscureText: true,
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            label: const Text("Email"),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ),

                      const SizedBox(height: defaultPadding),

                      //DoB
                      Card(
                        elevation: 2,
                        shadowColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          onTap: () async {
                            await _selectDate(context);
                          },
                          // focusNode: _node,
                          // obscureText: true,
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            // label: const Text("Password"),
                            hintText: isSelectDoB
                                ? "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}"
                                : "Date of Birth",
                          ),
                          keyboardType: TextInputType.none,
                          showCursor: false,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ),

                      const SizedBox(height: defaultPadding),

                      DropdownButton<String>(
                        itemHeight: 70.0,
                        value: dropdownValue,
                        icon: const Icon(
                          FontAwesomeIcons.chevronDown,
                          // size: 20,
                        ),
                        iconSize: 20,
                        elevation: 10,
                        style: const TextStyle(color: blackColor),
                        underline: Container(
                          height: 2,
                          color: ashColor,
                        ),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownValue = newValue!;
                          });
                        },
                        items: const [
                          DropdownMenuItem(
                            child: Text('Male'),
                            value: 'Male',
                          ),
                          DropdownMenuItem(
                            child: Text('Female'),
                            value: 'Female',
                          )
                        ],
                      ),

                      const SizedBox(height: defaultPadding),

                      Card(
                        elevation: 2,
                        shadowColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          // focusNode: _node,
                          // obscureText: true,
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            // label: const Text("Password"),
                            hintText: "Phone Number",
                          ),
                          keyboardType: TextInputType.phone,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ),

                      const SizedBox(height: defaultPadding),

                      Card(
                        elevation: 2,
                        shadowColor: bgColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextFormField(
                          // focusNode: _node,
                          // obscureText: true,
                          cursorColor: primaryColor,
                          decoration: textInputDecoration.copyWith(
                            // label: const Text("Password"),
                            hintText: "Address Line",
                          ),
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (val) {
                            setState(() {
                              password = val;
                            });
                          },
                        ),
                      ),

                      const SizedBox(height: defaultPadding + 10),

                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/enterpassword');
                        },
                        child: const Text(
                          'Next',
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

                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already an account?",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // const SizedBox(width: defaultPadding - 5),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/signin');
                        },
                        child: const Text(
                          'Sign in',
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
