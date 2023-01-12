import 'package:g4amst/models/cart.dart';
import 'package:g4amst/models/product.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class ProductView extends StatelessWidget {
  final Product product;
  ProductView(this.product);
  @override
  Widget build(BuildContext context) {
    return Container(
        child: PhotoView(
          imageProvider: AssetImage(product.image),
        )
    );
  }
  Widget _body() {
    return Column(
        children: [
        Expanded(
        flex: 2,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                Text(
                  product.title,
                  style:TextStyle(fontSize: 38, fontWeight:
                  FontWeight.bold),
                ),
                Expanded(
                    child:
                    Stack(alignment: Alignment.bottomRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 80.0),
                            child: Hero(
                                tag: "${product.id}",
                                child: Image.asset(product.image)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                        fontSize: 18, fontWeight:
                                    FontWeight.w500),
                                  ),
                                  Text(
                                    "\$" + product.price.toString(),
                                    style: TextStyle(
                                        fontSize: 36,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ]),
                          ),
                        ]))
              ],
            ))),
    Expanded(
    flex: 2,
    child: Container(
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(36),
    topRight: Radius.circular(36),
    ),
    ),
    child: Column(children: [
    Padding(
    padding: EdgeInsets.all(50),
    child: Text(
    "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi    ut aliquip ex ea commodo consequat. Duis aute irure dolor in    reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla    pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa    qui officia deserunt mollit anim id est laborum."),
    ),
    Material(    type: MaterialType.transparency,child: Ink(    decoration: BoxDecoration(    border: Border.all(color: Colors.black, width: 3.0),    shape: BoxShape.circle,    ),    child: InkWell(    borderRadius: BorderRadius.circular(1000),   onTap: () => {
    demoCarts.addItem(product)
    },
    child: Padding(
    padding: const EdgeInsets.all(15),
    child: Icon(Icons.shopping_cart),
    ),
    ),
    ),
    )
    ]),
    ),
    )
    ],
    );
  }
}