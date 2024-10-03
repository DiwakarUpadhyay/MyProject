import 'package:flutter/cupertino.dart';
import 'package:practise/provider/module.dart';
import 'package:practise/screen/login_page.dart';
import 'package:provider/provider.dart';

class RouterHelper{
  Map<String , WidgetBuilder> createRoute(){
    return{
      Login.route: (_)=>
          ChangeNotifierProvider.value(
              value:Module(),
            child:  const Login(),
          ),
    };
  }
}