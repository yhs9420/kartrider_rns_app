import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kartrider_rns/src/controllers/home_controller.dart';
import 'package:kartrider_rns/src/screens/navigator/record_search_screen.dart';
import 'package:kartrider_rns/src/screens/navigator/kartbody_screen.dart';
import 'package:kartrider_rns/src/screens/navigator/app_setting_screen.dart';
import 'package:kartrider_rns/src/screens/navigator/rider_name_search_screen.dart';
import 'package:kartrider_rns/src/themes/app_theme.dart';
import 'package:kartrider_rns/src/themes/fx_app_theme.dart';
import 'package:kartrider_rns/src/widgets/bottom_navigation_bar/fx_bottom_navigation_bar.dart';
import 'package:kartrider_rns/src/widgets/bottom_navigation_bar/fx_bottom_navigation_bar_item.dart';
import 'package:kartrider_rns/src/widgets/text/fx_text.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  FxBottomNavigationBarType bottomNavigationBarType =
      FxBottomNavigationBarType.normal;
  Axis labelDirection = Axis.horizontal;
  bool showLabel = false, showActiveLabel = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          //body: Column(
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                RiderNameSearhScreen(),
                RecordSearchScreen(),
                KartbodyScreen(),
                AppSettingScreen(),
              ],
            ),
          ),
          // appBar: AppBar(
          //   elevation: 0,
          //   backgroundColor: FxAppTheme.customTheme.bgLayer2,
          //   leading: IconButton(
          //     onPressed: () {}, //=> Navigator.of(context).pop(),
          //     icon: Image.asset(
          //         "assets/images/rns.png"), //Icon(MdiIcons.chevronLeft),
          //   ),
          //   title: FxText.sh1("RNS", fontWeight: 600),
          // ),
          backgroundColor: FxAppTheme.customTheme.bgLayer2,
          bottomNavigationBar: FxBottomNavigationBar(
            containerDecoration: BoxDecoration(
                color: FxAppTheme.customTheme.bgLayer2,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                boxShadow: [
                  BoxShadow(
                      color: AppTheme.customTheme.shadowColor.withAlpha(200),
                      offset: Offset(8, 0),
                      blurRadius: 8)
                ]),
            activeContainerColor:
                AppTheme.theme.colorScheme.primary.withAlpha(30),
            fxBottomNavigationBarType:
                FxBottomNavigationBarType.normal, // 주요 기능 1
            showActiveLabel: true, // 주요 기능 2
            showLabel: true, // 주요 기능 3
            activeIconSize: 22,
            iconSize: 22,
            titleSize: 12,
            activeTitleSize: 12,
            labelDirection: Axis.vertical, // 주요 기능 4
            activeIconColor: AppTheme.theme.colorScheme.primary,
            iconColor: FxAppTheme.theme.colorScheme.onBackground.withAlpha(140),

            itemList: [
              FxBottomNavigationBarItem(
                page: RiderNameSearhScreen(),
                title: "라이더명 내역",
                activeIconData: Icons.person_search,
                iconData: Icons.person_search_outlined,
              ),
              FxBottomNavigationBarItem(
                page: RecordSearchScreen(),
                title: "전적",
                activeIconData: Icons.manage_search,
                iconData: Icons.manage_search_outlined,
              ),
              FxBottomNavigationBarItem(
                page: KartbodyScreen(),
                title: "카트바디",
                activeIconData: Icons.bedroom_child,
                iconData: Icons.bedroom_child_outlined,
              ),
              FxBottomNavigationBarItem(
                page: AppSettingScreen(),
                title: "설정",
                activeIconData: Icons.settings,
                iconData: Icons.settings_outlined,
              ),
            ],
          ),
        );
      },
    );
  }
}
