import 'package:aplicativo_da_magalu/models/itens.dart';
import 'package:aplicativo_da_magalu/provider/list_of_itens.dart';
import 'package:aplicativo_da_magalu/style.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
 createState() => _HomeState();
}


class _HomeState extends State<Home>{
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset ("assets/images/logo.jpg",),
        title: Text(
          "Ofertas do dia",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
         ),   
        ),
        bottom: PreferredSize(
          preferredSize: Size(15, 0),
          child: Image.asset("assets/images/linha.jpg"),         
        ),
      ),
      body: ListView.separated(
        itemBuilder: builder,
        itemCount:listOfItens.length,
        separatorBuilder: (_, index){
          return Divider();
        },
        ),
    );
  }

  Widget builder(BuildContext _,int index){
    Itens _itens =listOfItens.elementAt(index);
    return ListTile(
      trailing: IconButton(
        icon: (_itens.isFavorite)?
          Icon(
          Icons.favorite,
          color: pinkTheme,
          ):
           
           Icon(
            Icons.favorite_border_outlined,
            color: pinkTheme,
            ),
         onPressed: (){
          setState(() {
             _itens.isFavorite = !_itens.isFavorite;
          });
         },
      ),
      title: Row(
        children: [
          Image.asset(
            _itens.photo,
            width: 75,
            height: 75,
            fit: BoxFit.cover,
            ),
            SizedBox(width: 8,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _itens.name,
                  style: TextStyle(
                    fontSize: 14,
                    height: 2,
                    fontWeight: FontWeight.bold,
                  ) ,
                  ),

                  Text(
                  _itens.secondName,
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ) ,
                  ),

                Text(
                  _itens.description,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                  ),
                  SizedBox(height: 10,),
                Text(
                  _itens.price,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: blueTheme.shade400,
                  ),
                  ),

                Text(
                  _itens.portion,
                  style: TextStyle(
                    fontSize: 11,
                    color: blueTheme.shade300,
                  ),
                  ),
              ],
            ),
        ],
        ) ,
    );
  }

}