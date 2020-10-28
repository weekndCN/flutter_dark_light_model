import 'package:dvps/screens/components/body.dart';
import 'package:dvps/size_config.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 初始化size配置
    SizeConfig().init(context);

    return Scaffold(
      appBar: AppBar(
        leading: buildIconButton(context),
        actions: [buildAddButton(context)],
      ),
      body: Body(),
    );
  }

  IconButton buildIconButton(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.add,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () {});
  }

  Padding buildAddButton(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: getProportionateScreenWidth(32),
          child: Icon(
            Icons.search,
            color: Theme.of(context).iconTheme.color,
          ),
        ),
      ),
    );
  }
}
