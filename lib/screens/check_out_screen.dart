import 'package:e_commerce_app/screens/cart_screen.dart';
import 'package:e_commerce_app/screens/dashboard_screen.dart';
import 'package:flutter/material.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      toolbarHeight: 1,),
      body: Column(
        children: [
          SizedBox(height: 25),

          Row(
            children: [
              SizedBox(width: 15),
              CircleAvatar(
                radius: 20,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => CartScreen()),
                    );
                  },
                  child: Icon(Icons.arrow_back, size: 25),
                ),
              ),
              SizedBox(width: 110),

              Text(
                'Check Out',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 45),

          Row(
            children: [
              SizedBox(width: 15),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffF8F7F7),
                child: Icon(Icons.my_location, color: Color(0xff6055D8)),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "325 15th Eighth Avenue, NewYork",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                  Text(
                    "Saepe eaque fugiat ea voluptatum veniam.",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 15),
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xffF8F7F7),
                child: Icon(
                  Icons.punch_clock_outlined,
                  color: Color(0xff6055D8),
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "6:00 pm, Wednesday 20",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ],
          ),

          SizedBox(height: 50),

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

          Padding(
            padding: const EdgeInsets.only(right: 130),
            child: Text(
              'Choose Payment Method',
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.paypal, size: 30, color: Colors.indigo),
                     SizedBox(width: 10,),
                    Text(
                      'Paypal',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffF8F7F7),
                    
                  )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.credit_card, size: 30, color: Colors.indigo),
                     SizedBox(width: 10,),
                    Text(
                      'credit card',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffF8F7F7),
                    child: Icon(Icons.done,color: Color(0xff6055D8),),
                  )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.cast_sharp, size: 30, color: Colors.indigo),
                    SizedBox(width: 10,),
                    Text(
                      'Cash',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xffF8F7F7),
                    
                  )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Text(
                  'Add New Payment Method',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xffF8F7F7),
                  child: Icon(Icons.add,color: Color(0xff6055D8),),
                )
              ],
            ),
          ),
          SizedBox(height: 40,),

          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: InkWell(

              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>DashboardScreen()));
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
