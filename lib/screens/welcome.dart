import 'package:auth_app/auth/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/constants.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0.w),
          child: Column(
            children: [
              Image(
                image: AssetImage("assets/images/Build.png"),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                child: Text(
                  "Une collaboration qui en vaut la peine.",
                  style: kheading1,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                child: Text(
                  'Rassemblez vos fichiers, vos outils, vos projets et vos équipes, y compris une nouvelle application mobile et de bureau.',
                  style: kpara,
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(
                height: 30.0.h,
              ),
              Spacer(),
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(10)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(),
                              ),
                            );
                          },
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 40.0.w,
                                right: 20.0.w,
                                top: 18.0.h,
                                bottom: 18.0.h),
                            child: Text(
                              'Connexion',
                              style: TextStyle(
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255)),
                              textAlign: TextAlign
                                  .left, // Aligne le texte à gauche dans le conteneur
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 0, 0, 0)),
                            shape: MaterialStateProperty
                                .all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(20.r),
                                          bottomRight: Radius.circular(20.r),
                                        ),
                                        side: BorderSide(
                                            color:
                                                Color.fromARGB(255, 0, 0, 0)))),
                          ),
                        ),
                        left: 120.0.w,
                        top: 1,
                        bottom: 0.2,
                      ),
                      Positioned(
                        // width: 100.0,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Login(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0.w, vertical: 18.0.h),
                              child: Text(
                                "S'enregistrer",
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0.r),
                                      side: BorderSide(
                                          color: Colors.transparent))),
                            )),
                      )
                      // top: 0,
                    ],
                  )),
              SizedBox(
                height: 30.h,
              )
            ],
          ),
        ),
      ),
    );
  }
}
