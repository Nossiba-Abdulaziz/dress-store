import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/HomePage.dart';
import 'package:myfirstapp/task2.dart';

void main(){
runApp( MyApp());
}
 class MyApp extends StatelessWidget{
 // const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(colorScheme:ColorScheme.fromSeed(seedColor: Colors.purple,),useMaterial3: false ),
     debugShowCheckedModeBanner: false,
     home:Homepage(),
   );
  }

}