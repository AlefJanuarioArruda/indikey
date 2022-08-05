import 'package:flutter/material.dart';
import 'package:indikey/Componentes/constant.dart';
import 'package:indikey/Componentes/default.button.dart';
import 'package:indikey/Dashboard/dashboard.dart';
import 'package:indikey/Get_started/Cadastro/cadastro.dart';
import 'package:indikey/Get_started/login.dart';


class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
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
      child: Row(
        children: <Widget>[
          // Image.asset(
          //   "assets/images/logo.png",
          //   height: 25,
          //   alignment: Alignment.topCenter,
          // ),
          SizedBox(width: 5),
          Text(
            "IndiKey".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),

          MenuItem(
            title: "Sobre",
            press: () {

            },
          ),

          MenuItem(
            title: "Contato",
            press: () {},
          ),
          MenuItem(
            title: "Entrar",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
          DefaultButton(
            text: "Iniciar Agora",
            press: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cadastro()),
            );},
          ),
        ],
      ),
    );
  }
}
class MenuItem extends StatelessWidget {
  final String title;
  final  press;
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