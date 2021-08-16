import 'package:aplicativo_da_magalu/screen/home/home.dart';
import 'package:aplicativo_da_magalu/style.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         dividerColor: greyDivider,
         primaryColor: blueTheme.shade400,
         // Se não ficar legal, excluir
         iconTheme: IconThemeData(
           color: pinkTheme,
           ),
      ),
    ),
  );
}