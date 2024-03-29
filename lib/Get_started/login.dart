import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:indikey/Get_started/Cadastro/cadastro.dart';
import 'package:lottie/lottie.dart';

import '../Dashboard/dashboard.dart';
class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 8),
        children: [
          Menu(),
          // MediaQuery.of(context).size.width >= 980
          //     ? Menu()
          //     : SizedBox(), // Responsive
          Body()
        ],
      ),
    );
  }
}

class Menu extends StatelessWidget {
  bool obscuretext = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
           //   _menuItem(title: 'Home'),
             // _menuItem(title: 'About us'),
             // _menuItem(title: 'Contact us'),
             // _menuItem(title: 'Help'),
            ],
          ),
          Row(
            children: [
              _menuItem(title: 'Entrar', isActive: true),
              InkWell(onTap: (){
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Cadastro()),
              );},child: _registerButton())
            ],
          ),
        ],
      ),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 75),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Column(
          children: [
            Text(
              '$title',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: isActive ? Colors.deepPurple : Colors.grey,
              ),
            ),
            SizedBox(
              height: 6,
            ),
            isActive
                ? Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 2),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
                borderRadius: BorderRadius.circular(30),
              ),
            )
                : SizedBox()
          ],
        ),
      ),
    );
  }

  Widget _registerButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            spreadRadius: 10,
            blurRadius: 12,
          ),
        ],
      ),
      child: Text(
        'Registrar-se',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black54,
        ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool obdscure = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 360,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Entre agora no \n INDIKEY',
                style: TextStyle(
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Caso não tenha conta",
                style: TextStyle(
                    color: Colors.black54, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "entre",
                    style: TextStyle(
                        color: Colors.black54, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Cadastro()),
                      );
                      print(MediaQuery.of(context).size.width);
                    },
                    child: Text(
                      "Registre-se agora",
                      style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Lottie.network(
                'https://assets5.lottiefiles.com/packages/lf20_msdmfngy.json',
                width: 300,
              ),
            ],
          ),
        ),

        Lottie.network(
          'https://assets5.lottiefiles.com/packages/lf20_mbginykv.json',
          width: 300,
        ),
        // MediaQuery.of(context).size.width >= 1300 //Responsive
        //     ? Image.asset(
        //         'images/illustration-1.png',
        //         width: 300,
        //       )
        //     : SizedBox(),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 6),
          child: Container(
            width: 320,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter email or Phone number',
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TextFormField(
                  obscureText: obdscure,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    counterText: 'Forgot password?',
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {obdscure =! obdscure;});
                    }, icon: Icon(
                      Icons.visibility_off_outlined,
                      color: Colors.grey,
                    ),),
                    filled: true,
                    fillColor: Colors.blueGrey[50],
                    labelStyle: TextStyle(fontSize: 12),
                    contentPadding: EdgeInsets.only(left: 30),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blueGrey.shade50),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.shade100,
                        spreadRadius: 10,
                        blurRadius: 20,
                      ),
                    ],
                  ),
                  child: ElevatedButton(
                    child: Container(
                        width: double.infinity,
                        height: 50,
                        child: Center(child: Text("Sign In"))),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Dashboard()),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.deepPurple,
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Row(children: [
                  Expanded(
                    child: Divider(
                      color: Colors.grey[300],
                      height: 50,
                    ),
                  ),

                  Expanded(
                    child: Divider(
                      color: Colors.grey[400],
                      height: 50,
                    ),
                  ),
                ]),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //      _loginWithButton(image: 'images/google.png'),
                    //      _loginWithButton(image: 'images/github.png', isActive: true),
                    //      _loginWithButton(image: 'images/facebook.png'),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }



  Widget _loginWithButton({String? image, bool isActive = false}) {
    return Container(
      width: 90,
      height: 70,
      decoration: isActive
          ? BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            spreadRadius: 10,
            blurRadius: 30,
          )
        ],
        borderRadius: BorderRadius.circular(15),
      )
          : BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Center(
          child: Container(
            decoration: isActive
                ? BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(35),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade400,
                  spreadRadius: 2,
                  blurRadius: 15,
                )
              ],
            )
                : BoxDecoration(),
            child: Image.asset(
              '$image',
              width: 35,
            ),
          )),
    );
  }
}