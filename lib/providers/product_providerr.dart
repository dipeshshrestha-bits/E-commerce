import 'package:e_commerce_app/model/product_model.dart';
import 'package:e_commerce_app/services/product_services.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductProviderr extends ChangeNotifier{
  List<ProductModel> _product=[]; //to store all the data of productmodel in List
  List<ProductModel> get product => _product; //to get the private form of data from product to public

  ProductServices _services =ProductServices();  //call the productservices

  ProductProviderr(){
    fetchProduct();
  }


Future<void> fetchProduct()async{
  _product = await _services.fetchProduct();
  notifyListeners();
}

Future<bool> addProductModel( String title, double price, String imageUrl,String description)async{
  final product = ProductModel(
    id : Uuid().v4(),
    title: title,
    
    imageUrl: imageUrl,
    price: price,
    description: description
  );
  await _services.addProduct(product);
  notifyListeners();
  return true;
}

Future<void> deleteProductModel(String id)async{
  await _services.deleteProduct(id);
  notifyListeners();
  fetchProduct();
  notifyListeners();
  }


  Future<void> updateProductModel(ProductModel product)async{
    await _services.updateProduct(product);
    notifyListeners();
    fetchProduct();
    notifyListeners();
      }

}