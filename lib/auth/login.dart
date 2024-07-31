import 'package:auth_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

bool _showPassword = false;

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  String helpertext = '';
  String username = '';
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0.w, vertical: 20.0.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  child: Text(
                    "Connectez-vous d'abord!",
                    style: kheading1,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  child: Text(
                    "Bon retour, vous nous avez manquez!",
                    style: kheading2,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(
                  height: 50.0.h,
                ),
                TextFormField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0.w, vertical: 15.0.h),
                    hintStyle: kplaceholder,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                      borderSide: BorderSide(
                        color: kdarkcolor,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    hintText: "Email ou nom d'utilisateur",
                  ),
                ),
                SizedBox(height: 20.0.h),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0.w, vertical: 15.0.h),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0.r),
                      borderSide: BorderSide(
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    helperText: "$helpertext",
                    hintText: "Mot de passe",
                    hintStyle: kplaceholder,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          _showPassword = !_showPassword;
                        });
                      },
                      child: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                        size: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  obscureText: !_showPassword,
                ),
                SizedBox(height: 150.0.h),
                GestureDetector(
                  onTap: () {},
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Pas de compte? ",
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          "Creez-en",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 20.0.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50.0, vertical: 20.0),
                        child: Text(
                          'Se connecter',
                          style: TextStyle(color: kdarkcolor, fontSize: 16.0),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 0, 0, 0)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                    side: BorderSide(
                                        color: Color.fromARGB(255, 0, 0, 0)))),
                      )),
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
