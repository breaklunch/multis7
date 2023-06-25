import 'package:lab07/router/app_routes.dart';
import 'package:lab07/themes/theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('La Casa Screen'),
          elevation: 0,
          //backgroundColor: Colors.green,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading: Icon(
                    AppRoutes.menuOptions[index].icon,
                    color: AppTheme.primary,
                  ),
                  title: Text(AppRoutes.menuOptions[index].name),
                  trailing: const Icon(Icons.arrow_forward_ios_sharp, color: AppTheme.primary,),
                  onTap: () {
                    //final route = MaterialPageRoute(builder: (context) => const CardScreen());
                    //Navigator.push(context, route);
                    Navigator.pushNamed(
                        context, AppRoutes.menuOptions[index].route);
                  },
                ),
            separatorBuilder: (context, index) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
