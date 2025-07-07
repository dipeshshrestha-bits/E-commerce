

import 'package:e_commerce_app/data/e_commerce_data.dart';
import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/dashboard_screen.dart';

import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1,
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),

          Row(
            children: [
              SizedBox(width: 15,),
              CircleAvatar(radius: 20,
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>DashboardScreen()));
                },
                child: Icon(Icons.arrow_back,size: 25,)),),
              SizedBox(width: 110,),

              Text('Products',style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.w500),)
            ],
          ),
          SizedBox(height: 30,),
          Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
            
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: products.length,
              itemBuilder: (context,index){
                return Container(
                  // height:150,
                  // width: 126,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                    
                  ),
                  child: Column(
                    children: [
                      Container(
                        height:130,
                        width: 175,
                        decoration: BoxDecoration(
                          // color: Colors.black,
                          image: DecorationImage(image: AssetImage(products[index]['image']),fit: BoxFit.cover)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 120,bottom:70),
                          child: Icon(Icons.favorite_outline,size: 30,color: Colors.white,),
                        ),
                      ),
            
                      Container(
                        height: 50,
                        width: 126,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                   products[index]['title'],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    products[index]['text'],
                                    style: TextStyle(
                                      color: Color(0xff6055D8),
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                              ],
                            ),
                            SizedBox(width: 5,),
                            InkWell(
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> CartScreen()));
                              },
                              child: CircleAvatar(
                                radius: 13,
                                backgroundColor: Colors.indigo,
                                child: Icon(Icons.add_outlined,color: Colors.white,size: 25,)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
            
              },
            ),
          ),
        ],
      ),
    );
  }
}
