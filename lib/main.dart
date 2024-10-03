import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:practise/provider/count_provider.dart';
import 'package:practise/provider/module.dart';
import 'package:practise/provider/router_helper.dart';
import 'package:practise/screen/login_page.dart';




import 'package:provider/provider.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    Provider(
        create: (_)=>RouterHelper(),
    child:  const MyApp())
      );
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false ,
      theme: ThemeData(
          primaryColor: Colors.black
      ),
      routes: context.read<RouterHelper>().createRoute(),
      initialRoute: Login.route,
    );

  }
}


