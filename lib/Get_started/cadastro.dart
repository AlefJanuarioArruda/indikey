import 'package:flutter/material.dart';
import 'package:indikey/Home/HomeScreen.dart';
import 'package:lottie/lottie.dart';

import '../Componentes/constant.dart';
import '../Componentes/default.button.dart';
import 'login.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(

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
      padding: const EdgeInsets.only(bottom: 30),
      child: Container(
          height: 65,
          margin: EdgeInsets.all(20),
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(46),
            boxShadow: [
              BoxShadow(
                offset: Offset(0, -2),
                blurRadius: 30,
                color: Colors.black.withOpacity(0.16),
              ),
            ],
          ),
          child: Row(children: <Widget>[
            // Image.asset(
            //   "assets/images/logo.png",
            //   height: 25,
            //   alignment: Alignment.topCenter,
            // ),
            SizedBox(width: 5),
            InkWell(
              onTap: (){Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );},
              child: Text(
                "IndiKey".toUpperCase(),
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Spacer(),

            ClipRRect(
              borderRadius: BorderRadius.circular(25),
              child: FlatButton(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 12),
                color: kPrimaryColor,
                onPressed: (){
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );},
                child: Text(
                  'Entrar',
                ),
              ),
            )

          ])),
    );
  }

  Widget _menuItem({String title = 'Title Menu', isActive = false}) {
    return Padding(
      padding: const EdgeInsets.only(right: 75,),
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
    return InkWell(
      onTap: () {},
      child: Container(
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
          'Entrar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
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
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 70,),
          Container(
            width: 360,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
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
                    hintText: 'Senha',
                    //counterText: 'Forgot password?',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obdscure = !obdscure;
                        });
                      },
                      icon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    ),
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
                ),SizedBox(height: 30),
                TextFormField(
                  obscureText: obdscure,
                  decoration: InputDecoration(
                    hintText: 'Repita Senha',
                    //counterText: 'Forgot password?',
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obdscure = !obdscure;
                        });
                      },
                      icon: Icon(
                        Icons.visibility_off_outlined,
                        color: Colors.grey,
                      ),
                    ),
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
                Textfield(
                  obscure: false,
                  title: 'Chave Pix',
                ),
                SizedBox(height: 30),
                Textfield(
                  obscure: false,
                  title: 'Tipo Chave pix',
                ),
                SizedBox(height: 30),
                Textfield(
                  obscure: false,
                  title: 'Nome Completo',
                ),
                SizedBox(height: 30),
                Textfield(
                  obscure: false,
                  title: 'Cpf',
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  child: Container(
                      width: double.infinity,
                      height: 50,
                      child: Center(child: Text("Sign In"))),
                  onPressed: () => print("it's pressed"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
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
                ),
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
              ],
            ),
          ),

          Lottie.network(
            'https://assets8.lottiefiles.com/packages/lf20_oi3karya.json',
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
              width: 360,
              child: Column(
                children: [
                  SizedBox(height: 40),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                width: 360,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Registrar-se \n Agora',
                      style: TextStyle(
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Já possui Conta",
                      style: TextStyle(
                          color: Colors.black54, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "",
                          style: TextStyle(
                              color: Colors.black54, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginPage()),
                            );

                          },
                          child: Text(
                            "Entrar Agora!",
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
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
            )])])))]));




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

class Textfield extends StatelessWidget {
  final bool obscure;
  final String title;

  const Textfield({Key? key, required this.obscure, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        hintText: title,
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
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;
  final press;

  const MenuItem({
    Key? key,
    required this.title,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            color: kTextcolor.withOpacity(0.3),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
