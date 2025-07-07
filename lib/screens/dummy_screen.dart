import 'package:e_commerce_app/providers/product_providerr.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DummyScreen extends StatefulWidget {
  const DummyScreen({super.key});

  @override
  State<DummyScreen> createState() => _DummyScreenState();
}

class _DummyScreenState extends State<DummyScreen> {
  TextEditingController _titleController = TextEditingController();
  TextEditingController _priceController = TextEditingController();
  TextEditingController _imageController = TextEditingController();
  TextEditingController _descriptionController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductProviderr>(context);
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),

      body: Column(
        children: [
          SizedBox(height: 100),
          Container(
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter the Title",
              ),
            ),
          ),
          SizedBox(height: 30),

          Container(
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _priceController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter the Price",
              ),
            ),
          ),
          SizedBox(height: 30),

          Container(
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _imageController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "enter Image",
              ),
            ),
          ),
          SizedBox(height: 30),

          Container(
            height: 40,
            width: double.maxFinite,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Enter the Description",
              ),
            ),
          ),
          SizedBox(height: 70),

          ElevatedButton(
            onPressed: () async {
              final title = _titleController.text;
              final price = double.tryParse(_priceController.text) ?? 0.0 ;
              final image = _imageController.text;
              final description = _descriptionController.text;

              if (title.isEmpty ||
                  price == 0 ||
                  image.isEmpty ||
                  description.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Please fill the information correctly"),
                    backgroundColor: Colors.red,
                  ),
                );
              } else {
                final success = await provider.addProductModel(
                  title,
                  price,
                  image,
                  description,
                );
                if (success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Submitted Successfully"),
                      backgroundColor: Colors.green,
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("Something went Wrong"),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
              }
              _titleController.clear();
              _priceController.clear();
              _imageController.clear();
              _descriptionController.clear();
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
