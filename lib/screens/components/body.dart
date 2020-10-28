import 'clock.dart';
import 'package:dvps/screens/components/time_in_hour_and_minute.dart';
import 'package:flutter/material.dart';
import '../../size_config.dart';
import '../../models/theme_provider.dart';
import 'package:provider/provider.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Text(
              "上海.黄浦区.南京东路｜MIX SPACE",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            TimeInHourAndMinute(),
            Clock(),
            ChangeTheme(),
          ],
        ),
      ),
    );
  }
}

class ChangeTheme extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Consumer<MyThemeModel>(
        builder: (context, theme, child) => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              onPressed: () => theme.changeTheme(),
              elevation: 30,
              child: Text(
                "Dark",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              color: Colors.black,
            ),
            RaisedButton(
              onPressed: () => theme.changeTheme(),
              elevation: 30,
              child: Text(
                "Light",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
