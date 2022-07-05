import 'package:flutter/material.dart';
import 'package:indikey/Home/Components/app_bar.dart';
import 'package:indikey/Home/Components/body.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf5f5f5),
      body: ListView(

        children: [

          // MediaQuery.of(context).size.width >= 980
          //     ? Menu()
          //     : SizedBox(), // Responsive

              CustomAppBar(),
              Spacer(),
              // It will cover 1/3 of free spaces
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Body(),
              ),

              Spacer(
                flex: 2,
              ),
              // it will cover 2/3 of free spaces
            ],
          ),

    );
  }
}

