import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            "Details",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        actions: [
          Stack(
            children: [
              Icon(
                Icons.notifications_outlined,
                size: 30,
                color: Colors.black,
              ),
              Positioned(
                top: 2,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.black,
                  child: Text(
                    "1",
                    style: TextStyle(color: Colors.white, fontSize: 5),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: [
                  Container(
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=loadhttps://images.pexels.com/photos/27663337/pexels-photo-27663337/free-photo-of-a-woman-in-a-pink-dress-walking-on-the-beach.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"))),
                  ),
                  Positioned(
                    top: 20,
                    right: 50,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  Positioned(
                      right: 60,
                      top: 36,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.black,
                        weight: 30,
                      ))
                ],
              ),
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "product name",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star_rate_outlined,
                          color: Color.fromARGB(255, 204, 185, 12),
                        ),
                        Text("4.5/5 (45 reviews)")
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        maxLines: 3,
                        textAlign: TextAlign.justify,
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC.."),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Text(
                          "choose size",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                            child: Center(
                              child: Text(
                                "S",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            )),
                        SizedBox(width: 10),
                        Container(
                            child: Center(
                              child: Text(
                                "M",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: const Color.fromARGB(255, 49, 48, 48),
                              ),
                            )),
                        SizedBox(width: 10),
                        Container(
                            child: Center(
                              child: Text(
                                "L",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ))
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Price"),
                      Text(
                        "price",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Icon(
                          Icons.local_mall_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "add to cart",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              )
            ] //colums
            ,
          ),
        ),
      ),
    );
  }
}
