import 'package:flutter/material.dart';
import 'package:module_11_assignment/screens/productListScreen.dart';

import '../screens/productdetails.dart';

class productItem extends StatefulWidget {
   productItem({
    super.key,
     required this.productClass,
     required this.indexo,
     required this.p,
  });
  final ProductClass productClass;
  final int indexo;
   List<ProductClass> p=[];

  @override
  State<productItem> createState() => _productItemState();
}

class _productItemState extends State<productItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetails(
                      productClass: widget.p[widget.indexo],
                    )));
      },
      leading:Image.network(widget.productClass.thumbnailUrl),
      title: Text(widget.productClass.title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
    );
  }
}