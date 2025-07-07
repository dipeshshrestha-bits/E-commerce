import 'package:e_commerce_app/data/e_commerce_data.dart';
import 'package:e_commerce_app/screens/check_out_screen.dart';
import 'package:e_commerce_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),

      body: Column(
        children: [
          SizedBox(height: 25),

          Row(
            children: [
              SizedBox(width: 20),
              CircleAvatar(
                radius: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProductScreen()),
                    );
                  },
                  child: Icon(Icons.arrow_back, size: 25),
                ),
              ),
              SizedBox(width: 110),

              Text(
                'Cart',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 25),

          SizedBox(
            height: 375,

            child: ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: cart.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Container(
                      height: 110,
                      width: double.maxFinite,
                      decoration: BoxDecoration(color: Color(0xffF8F7F7)),
                      child: Row(
                        children: [
                          Container(
                            height: 125,
                            width: 126,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Image.asset(
                              cart[index]['image'],
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                    
                          Column(
                            children: [
                              Text(
                                cart[index]['title'],
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                cart[index]['subtitle'],
                                style: TextStyle(
                                  color: Colors.black45,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                              Text(
                                cart[index]['text'],
                                style: TextStyle(
                                  color: Color(0xff6055D8),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 80),
                          Column(
                            children: [
                              Icon(Icons.delete, color: Colors.red, size: 30),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Color(0xff6055D8),
                                    child: Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: Text(
                                      "02",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    radius: 13,
                                    backgroundColor: Color(0xff6055D8),
                                    child: Icon(
                                      Icons.add,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                );
              },
              
            ),
            
          ),

          SizedBox(height:5),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Container(
              height: 206,
              width: double.maxFinite,
              color: Color(0xffF8F7F7),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Order Summary',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Cart',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$423',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Discount',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$4',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Delivery charge',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(color: Colors.black, thickness: 1),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Text(
                          '\$423',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckOutScreen()));
              },
              child: Container(
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff6055D8),
                ),
                child: Center(
                  child: Text(
                    'Check out',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
