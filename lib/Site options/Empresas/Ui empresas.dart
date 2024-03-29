import 'package:flutter/material.dart';
import 'package:indikey/Site%20options/Empresas/AP.dart';
import 'package:lottie/lottie.dart';

import '../../Dashboard/Componentss/AppbarActionItems.dart';
import '../../Dashboard/Componentss/barchat.dart';
import '../../Dashboard/Componentss/header.dart';
import '../../Dashboard/Componentss/historytable.dart';
import '../../Dashboard/Componentss/infocard.dart';
import '../../Dashboard/Componentss/paymentListtile.dart';
import '../../Dashboard/Componentss/sideMenu.dart';
import '../../Dashboard/config/responsive.dart';
import '../../Dashboard/config/size_config.dart';
import '../../Dashboard/style/colors.dart';
import '../../Dashboard/style/style.dart';

class Empresa_widget extends StatelessWidget {
  Empresa_widget({Key? key}) : super(key: key);
  List<String> Foto = [
    'data:image/png;base64,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'
  ];
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
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
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(child: Lottie.network('https://assets9.lottiefiles.com/packages/lf20_o8btuiyj.json',width: 500,height: 500)),
                          Wrap(children: [
                            SizedBox(
                                height: MediaQuery.of(context).size.height * 2,
                                width: MediaQuery.of(context).size.width,
                                child: FutureBuilder(
                                    future: HomeGalleryList(),
                                    builder: (context, snapshot) {
                                      // if (!snapshot.hasData) {
                                      //   return Center(
                                      //     child: Container(
                                      //         width: 100,
                                      //         height: 100,
                                      //         child: CircularProgressIndicator(
                                      //             color: Colors.black87)),
                                      //   );
                                      // } else {
                                      return GridView.builder(
                                        shrinkWrap: false,
                                         // reverse: false,
                                          primary: false,
                                          physics: NeverScrollableScrollPhysics(),
                                          gridDelegate:
                                              const SliverGridDelegateWithMaxCrossAxisExtent(
                                                  maxCrossAxisExtent: 150,
                                                  childAspectRatio: 4 / 3,
                                                  crossAxisSpacing: 50,
                                                  mainAxisSpacing: 50),
                                          itemCount: 50,
                                          itemBuilder: (BuildContext context,
                                              int index) {
                                            return Wrap(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      top: 15,
                                                      left: 15,
                                                      right: 15,
                                                      bottom: 15),
                                                  child: InkWell(
                                                    onTap: (){
                                                      Navigator.push(
                                                        context,
                                                        MaterialPageRoute(builder: (context) => Ap()),
                                                      );
                                                    },
                                                    child: Column(
                                                      children: [
                                                        Container(
                                                          height: 100,
                                                          width: 100,
                                                          padding:
                                                              EdgeInsets.all(20),
                                                          decoration: BoxDecoration(
                                                              color: Colors.white,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20),
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade600,
                                                                    blurRadius:
                                                                        13,
                                                                    spreadRadius:
                                                                        0),
                                                              ]),
                                                          child: Center(
                                                            child: Image.network(
                                                                'data:image/png;base64,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'
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  right: 10,
                                                                  top: 10,
                                                                  left: 20),
                                                          child: Text(
                                                            'Depth',
                                                            style: TextStyle(
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          });
                                    }))
                          ]),


                        ],
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}

HomeGalleryList() {
  return;
}
