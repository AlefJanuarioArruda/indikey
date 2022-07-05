import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:indikey/Dashboard/dashboard.dart';
import 'package:indikey/Site%20options/Empresas/Ui%20empresas.dart';

import '../config/size_config.dart';
import '../style/colors.dart';


class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        width: double.infinity,
        height: SizeConfig.screenHeight,
        decoration: BoxDecoration(color: AppColors.secondaryBg),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Dashboard()),
                  );
                },
                child: Container(
                  height: 100,
                  alignment: Alignment.topCenter,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 35,
                    height: 20,
                    child: Icon(Icons.home_work,size: 30,)
                  ),
                ),
              ),

              SizedBox(height: 10,),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.paste_sharp,size: 25,),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Empresa_widget()),
                    );
                  }),
              SizedBox(height: 10,),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.show_chart_sharp,size: 25,),
                  onPressed: () {}),
              SizedBox(height: 10,),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: Icon(Icons.monetization_on,size: 25,),
                  onPressed: () {}),
              SizedBox(height: 10,),
              IconButton(
                  iconSize: 20,
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  icon: SvgPicture.asset(
                    'assets/trophy.svg',
                    color: AppColors.iconGray,
                  ),
                  onPressed: () {}),

            ],
          ),
        ),
      ),
    );
  }
}