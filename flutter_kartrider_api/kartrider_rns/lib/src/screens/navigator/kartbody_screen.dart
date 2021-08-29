import 'package:flutter/material.dart';
import 'package:kartrider_rns/src/themes/fx_app_theme.dart';
import 'package:kartrider_rns/src/widgets/text/fx_text.dart';

class KartbodyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: FxAppTheme.customTheme.bgLayer2,
            title: FxText.sh1("카트바디", fontWeight: 600),
            leading: IconButton(
              onPressed: () {}, //=> Navigator.of(context).pop(),
              icon: Image.asset(
                  "assets/images/rns.png"), //Icon(MdiIcons.chevronLeft),
            ),
          ),
          backgroundColor: FxAppTheme.customTheme.bgLayer2,
        ),
      ),
    );
  }
}
