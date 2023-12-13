import 'package:flutter/material.dart';

class Shoes extends StatefulWidget {
  const Shoes({super.key});

  @override
  State<Shoes> createState() => _ShoesState();
}

class _ShoesState extends State<Shoes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {},
                  ),
                  Text("1"),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                  child: Row(
                      //mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      
                      child: Center(
                        child: Text(
                          "Add to Cart",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ])),
            )
          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 20, bottom: 20),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
              ),
              Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Nike Air Jordan",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 30, top: 20, bottom: 20),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(20),
                  height: 300,
                  width: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdnb.artstation.com/p/assets/covers/images/018/400/709/large/gonzalo-blanco-render-nike-2.jpg?1559227635"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30)))
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 50, left: 30)),
              Text(
                "Detailed Product",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 20, left: 30)),
              Text(
                "\$ 75.5",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.only(top: 180, left: 30)),
              Text(
                """Air Jordan is a line of basketball shoes produced 
by Nike, Inc. Related apparel and accessories are 
marketed under Jordan Brand.The silhouette of 
Michael Jordan served as inspiration to create
the "Jumpman" logo. 
 

Made in Italy, original pairs featured a premium
look and feel that quickly earned them an iconic 
spot in  Air Jordan history.""",

                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 15),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
