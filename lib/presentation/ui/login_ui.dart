import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:job_app/presentation/components/custom_filled_button.dart';
import 'package:job_app/presentation/components/password_textfield.dart';
import 'package:job_app/presentation/components/textfield.dart';
import 'package:job_app/presentation/components/tiles.dart';

class LoginUi extends StatefulWidget {
  LoginUi({Key? key}) : super(key: key);

  @override
  _LoginUiState createState() => _LoginUiState();
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();

}

class _LoginUiState extends State<LoginUi> {
  bool isVisible = false;

  @override
  Widget build(BuildContext context) {
    double mainWidth=MediaQuery.of(context).size.width;
    double width=(mainWidth>400)? 350:mainWidth-50;

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Set your desired color here
        statusBarIconBrightness:
            Brightness.dark, // Change the status bar icons color
        systemNavigationBarColor: Colors.white,
        systemNavigationBarIconBrightness: Brightness.dark));


    return SafeArea(
      child: Container(
        margin: EdgeInsets.only(top: 35),
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          
          children: [
            
            Expanded(
              child: SingleChildScrollView(child: Column(children: [
                Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 10, right: 10, top: 20, bottom: 5),
                  child: Text(
                    'Login here',
                    style: TextStyle(
                        color: Colors.red.shade600,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.only(
                      left: 10, right: 10, top: 5, bottom: 20),
                  child: Text(
                    "Welcome back you've\nbeen missed!",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 19),
                  ),
                ),
              ],
            ),
                CustomTextField(hint: 'Email', controller: widget.emailController,),
                
                CustomPasswordField(controller: widget.passController,),

                Container(
                  width: width,
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        child: Text(
                          'Forgot your password?',
                          style: TextStyle(
                              color: Colors.deepOrange.shade600,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                      )
                    ],
                  ),
                ),
                CustomFilledButton(buttonText: 'Sign in', onPressed: () {
                  print(""+widget.emailController.text.toString().trim());
                  print(""+widget.passController.text.toString().trim());
                  print('Sign in Clicked!');
                  
                }),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: GestureDetector(
                    onTap: (){
                      print('Create new account clicked!');
                    },
                    child: const Text(
                      "Create new account",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    "Or continue with",
                    style: TextStyle(
                        color: Colors.deepOrange.shade600,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      CustomTiles(path: 'assets/images/icons8-google-48.png',onTap: (){},),
                      CustomTiles(path: 'assets/images/icons8-github-50.png',onTap: (){},),
                      CustomTiles(path: 'assets/images/icons8-apple-50.png',onTap: (){},),
                  
                    ],
                  ),
                )
              ],)),
        )],
        ),
      ),
    );
  }
}
