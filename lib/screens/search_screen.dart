import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
  return Column(
    
    children: [
      SizedBox(height: 100,),
      Container(
        
          width: 180,
          height: 140,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Column(
              children: [
                // Image with heart icon row
                Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        "assets/first.jpg", // Replace with your image path
                        fit: BoxFit.cover,
                        height: 120,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 8, right: 8),
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    ],
  );
  }
}