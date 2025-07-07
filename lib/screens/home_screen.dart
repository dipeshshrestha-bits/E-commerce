import 'package:e_commerce_app/data/e_commerce_data.dart';
import 'package:e_commerce_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1, backgroundColor: Colors.white),

      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(radius: 28,
                    child: Image(image: AssetImage("assets/child.png")),),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "Dipesh Shrestha",
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

                CircleAvatar(
                  radius: 28,
                  child: Icon(Icons.notifications, size: 30),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Container(
              height: 40,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xffF8F7F7),
                border: Border.all(color: Colors.black45, width: 1),
                borderRadius: BorderRadius.circular(25),
              ),

              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.search, size: 30),
                  hintText: "Search here",
                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              height: 160,
              width: double.maxFinite,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Color(0xff6055D8),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 15),
                    child: Column(
                      children: [
                        Text(
                          "Get Winter Discount",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "20% Off",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "For Childern",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 55),
                  Image(image: AssetImage("assets/child.png"),fit: BoxFit.cover,),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Featured",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> ProductScreen()));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xff6055D8),
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Featured.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 144,
                    width: 126,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF8F7F7),
                    ),

                    child: Column(
                      children: [
                        Container(
                          height: 99,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15)
                          ),
                          child: Container(
                            height: 100,
                            width: 126,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage(Featured[index]['image']),
                                fit: BoxFit.cover,
                              ),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 70,
                                bottom: 50,
                              ),
                              child: Icon(Icons.favorite_outline, color: Colors.white,size: 30,),
                            ),
                          ),
                        ),

                        Text(
                          Featured[index]['title'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          Featured[index]['text'],
                          style: TextStyle(
                            color: Color(0xff6055D8),
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),

          SizedBox(height: 20,),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Most Popular",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  "See All",
                  style: TextStyle(
                    color: Color(0xff6055D8),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 160,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: Featured.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 144,
                    width: 126,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffF8F7F7),
                    ),

                    child: Column(
                      children: [
                        Container(
                          height: 99,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15)
                          ),
                          child: Container(
                            height: 100,
                            width: 126,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft:Radius.circular(15),topRight: Radius.circular(15)),
                              image: DecorationImage(
                                image: AssetImage(Popular[index]['image']),
                                fit: BoxFit.cover,
                              ),
                            ),

                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 70,
                                bottom: 60,
                              ),
                              child: Icon(Icons.favorite_border_outlined, color: Colors.white,size: 30,),
                            ),
                          ),
                        ),

                        Text(
                          Popular[index]['title'],
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          Popular[index]['text'],
                          style: TextStyle(
                            color: Color(0xff6055D8),
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
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
