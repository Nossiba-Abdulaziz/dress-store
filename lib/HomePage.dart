import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myfirstapp/Product.dart';

class Homepage extends StatelessWidget {
  Homepage({super.key});
  List<Product>allProduct=[
    Product(title: "Cotton Shirt", description: "this beatiful shirt for you ", image: "https://encrypted-tbn0.gstatic.com/shopping?q=tbn:ANd9GcSwnGhzU1DS6W_5CEqFvpZTNrl90CYoUR-VJhIrhqymzVSTCY6PVw0yq-6SDKwwU4nzmLiWQMKNoVQxDS39dzw78HKNrpTv_WEsDXtPRcXCdaki6nUGH1kIeem2alt3aVj647f2TOo&usqp=CAc", price: 90, discountPrice: 75)

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:ListView.builder(itemCount: 10,itemBuilder: (context , index){
        return Card(

          margin: EdgeInsets.symmetric(vertical: 10),

          child : Padding(padding: const EdgeInsets.all(11.0),

          child:Column(
            children: allProduct.map((x) => buildProducts(x, context)).toList(),


          ),
          )
        );
      }

    /*Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 70,
    color: Colors.white,
    child:Column(
    children: allProduct.map((x) => buildProducts(x, context)).toList(),


    ),
    ),*/

    )
    );
  }


  Widget buildProducts(Product p,BuildContext con){


    return Container(
        padding: EdgeInsets.all(5),
      height:150,
margin: EdgeInsets.symmetric(horizontal: 5),
      // width: (MediaQuery.of(con).size.width*(2/3)-5),
      child:Row(
       // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Image.network(p.image),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(p.title ,style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold ),),
          Text(p.description),
          Row(
           children: [
             Container(
               child: Column(
                 children: [
                   Text(p.price.toString(),style: TextStyle( fontSize: 15),),
                   Text(p.discountPrice.toString(),style: TextStyle( fontSize: 15,color: Colors.red,decoration: TextDecoration.lineThrough)),
                 ],
               ),
             ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
              Text("Color" ,style: TextStyle(fontWeight: FontWeight.w600),),
                  Container(
                   // padding: EdgeInsets.symmetric(horizontal: 5),
                    child: Row(

                     // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.square,color: Colors.red,),
                        Icon(Icons.square,color: Colors.blue,),
                        Icon(Icons.square,color: Colors.yellow,),
                      ],
                    ),
                   // width:(MediaQuery.of(con).size.width*1/5),
                  )
                ],
              ),

            ),
           ],
            )

            ],
          )




      ),


],
    )

    );
  }
}
/*
  return Container(
      child:Row(
          children: [
           Image.network(p.image),
      Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Text(p.title),
          Text(p.description),
          Row(
           children: [
             Container(
               child: Column(
                 children: [
                   Text(p.price.toString()),
                   Text(p.discountPrice.toString()),
                 ],
               ),
             ),
            Container(
              child: Column(
                children: [
              Text("Color"),
                  Container(
                    child: Row(
                      children: [
                        Icon(Icons.square,color: Colors.red,),
                        Icon(Icons.square,color: Colors.blue,),
                        Icon(Icons.square,color: Colors.yellow,),
                      ],
                    ),
                  )
                ],
              ),

            ),
           ],
            )

            ],
          )




      ),


],
    )

    );


 */