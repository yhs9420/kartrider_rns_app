import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartrider_rns/src/controllers/rider_name_search_controller.dart';

import 'package:kartrider_rns/src/themes/fx_app_theme.dart';

import 'package:kartrider_rns/src/widgets/text/fx_text.dart';

class RiderNameSearhScreen extends GetView<RiderNameSearchController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: FxAppTheme.customTheme.bgLayer2,
            title: FxText.sh1("라이더명 내역", fontWeight: 600),
            // leading: IconButton(
            //   onPressed: () {}, //=> Navigator.of(context).pop(),
            //   icon: Image.asset(
            //       "assets/images/rns.png"), //Icon(MdiIcons.chevronLeft),
            // ),
          ),
          body: Container(
              padding: const EdgeInsets.all(15),
              child: Obx(() {
                var info = controller.riderStatistics.value;
                return Column(children: [
                  Row(
                    children: [
                      FxText.sh1(
                        "Test",
                        color: FxAppTheme.customTheme.lightBlack,
                        fontWeight: 800,
                      ),
                      FxText.sh1(
                        " : ${info.accessId}",
                        color: FxAppTheme.customTheme.lightBlack,
                        fontWeight: 800,
                      ),
                    ],
                  ),
                ]);
              })),
          backgroundColor: FxAppTheme.customTheme.bgLayer2,
        ),
      ),
    );
  }
}
