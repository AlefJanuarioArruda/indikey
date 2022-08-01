import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../Dashboard/Componentss/AppbarActionItems.dart';
import '../../Dashboard/Componentss/sideMenu.dart';
import '../../Dashboard/config/responsive.dart';
import '../../Dashboard/config/size_config.dart';
import '../../Dashboard/style/colors.dart';
import 'Ui empresas.dart';

class Ap extends StatelessWidget {
  Ap({Key? key}) : super(key: key);
   Color white = Colors.white;
   Color black = Colors.black;
   Color red = Colors.red;
   Color darkBlue = Color.fromRGBO(19, 26, 44, 1.0);

//default app padding

   double appPadding = 30.0;

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white54,
      key: _drawerKey,
      drawer: SizedBox(width: 100, child: SideMenu()),
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  },
                  icon: Icon(Icons.menu, color: AppColors.black)),
              actions: [
                AppBarActionItems(),
              ],
            )
          : PreferredSize(
              preferredSize: Size.zero,
              child: SizedBox(),
            ),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                flex: 1,
                child: SideMenu(),
              ),
            // Expanded(flex: 5,child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_o8btuiyj.json')),
            Expanded(
              flex: 10,
              child: SafeArea(
                  child: SingleChildScrollView(
                      padding:
                          EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                              height: 620,
                              width: 700,
                              padding: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.shade600,
                                        blurRadius: 13,
                                        spreadRadius: 0),
                                  ]),
                              child: Column(
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                              image: NetworkImage(
                                                'https://media-cdn.tripadvisor.com/media/photo-s/16/1a/ea/54/hotel-presidente-4s.jpg',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        width: 300,
                                        height:
                                            MediaQuery.of(context).size.height /
                                                1.2,
                                      ),
                                      Expanded(
                                        child: ListView(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                bottom: appPadding,
                                                left: appPadding,
                                                right: appPadding,
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        '\$4.000.000',
                                                        style: TextStyle(
                                                          fontSize: 28,
                                                          fontWeight: FontWeight.bold,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 5,
                                                      ),
                                                      Text(
                                                        'Manison, MI 49526,SF',
                                                        style: TextStyle(
                                                          fontSize: 15,
                                                          color: black.withOpacity(0.4),
                                                          fontWeight: FontWeight.w600,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                  Text(
                                                    '10 hours ago',
                                                    style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight: FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                              const EdgeInsets.only(left: 30, bottom: 30),
                                              child: Text(
                                                'House information',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              height: 130,
                                              child: ListView(
                                                scrollDirection: Axis.horizontal,
                                                physics: BouncingScrollPhysics(),
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: appPadding,
                                                      bottom: appPadding,
                                                    ),
                                                    child: Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          color: white,
                                                          borderRadius: BorderRadius.circular(20),
                                                          border: Border.all(
                                                            color: black.withOpacity(0.4),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            '1210',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'Square foot',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: appPadding,
                                                      bottom: appPadding,
                                                    ),
                                                    child: Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          color: white,
                                                          borderRadius: BorderRadius.circular(20),
                                                          border: Border.all(
                                                            color: black.withOpacity(0.4),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            '1',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'Bedrooms',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: appPadding,
                                                      bottom: appPadding,
                                                    ),
                                                    child: Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          color: white,
                                                          borderRadius: BorderRadius.circular(20),
                                                          border: Border.all(
                                                            color: black.withOpacity(0.4),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            '2',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'Bathrooms',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: EdgeInsets.only(
                                                      left: appPadding,
                                                      bottom: appPadding,
                                                    ),
                                                    child: Container(
                                                      width: 100,
                                                      decoration: BoxDecoration(
                                                          color: white,
                                                          borderRadius: BorderRadius.circular(20),
                                                          border: Border.all(
                                                            color: black.withOpacity(0.4),
                                                          )),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          Text(
                                                            '1',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight: FontWeight.bold,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            height: 10,
                                                          ),
                                                          Text(
                                                            'Garages',
                                                            style: TextStyle(
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.w600,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: appPadding,
                                                right: appPadding,
                                                bottom: appPadding * 4,
                                              ),
                                              child: Text(
                                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
                                                style: TextStyle(
                                                  color: black.withOpacity(0.4),
                                                  height: 1.5,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}
