import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoping_ui_sample/controller/homescreen_controller.dart';

import 'package:shoping_ui_sample/view/productdetailsscreen/productdetailsscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List mylist = [
    {
      "bg":
          "https://images.pexels.com/photos/7523254/pexels-photo-7523254.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 1",
      "subtext": "Prise"
    },
    {
      "bg":
          "https://images.pexels.com/photos/2440427/pexels-photo-2440427.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "Product 3",
      "subtext": "Price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/2966315/pexels-photo-2966315.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 4",
      "subtext": "Price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/3010313/pexels-photo-3010313.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 5",
      "subtext": "price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/2440427/pexels-photo-2440427.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 6",
      "subtext": "price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/2966315/pexels-photo-2966315.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 7",
      "subtext": "price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/3010313/pexels-photo-3010313.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 8",
      "subtext": "price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/2440427/pexels-photo-2440427.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 9",
      "subtext": "price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/2966315/pexels-photo-2966315.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 10",
      "subtext": "price"
    },
    {
      "bg":
          "https://images.pexels.com/photos/3010313/pexels-photo-3010313.jpeg?auto=compress&cs=tinysrgb&w=600",
      "text": "product 11",
      "subtext": "price"
    }
  ];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) => context.read<HomescreenController>().getcatagories(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: context.watch<HomescreenController>().cataorylist.length,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Discover",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            actions: [
              Stack(
                children: [
                  Icon(
                    Icons.notification_add_outlined,
                    color: Colors.black,
                    size: 35,
                  ),
                  Positioned(
                    right: 0,
                    top: 2,
                    child: CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 10,
                      child: Text(
                        "1",
                        style: TextStyle(color: Colors.white, fontSize: 8),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              )
            ],
          ),
          bottomNavigationBar: NavigationBar(
            destinations: [
              NavigationDestination(
                  icon: Icon(
                    Icons.home,
                    size: 30,
                  ),
                  label: "home"),
              NavigationDestination(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                  ),
                  label: "Saved"),
              NavigationDestination(
                  icon: Icon(
                    Icons.local_mall_outlined,
                    size: 30,
                  ),
                  label: "cart"),
              NavigationDestination(
                  icon: Icon(
                    Icons.settings,
                    size: 30,
                  ),
                  label: "Settings"),
            ],
          ),
          body: Consumer<HomescreenController>(
            builder: (context, providerbj, child) => providerbj.isloading
                ? Center(child: CircularProgressIndicator())
                : Container(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: ListTile(
                            leading: Icon(
                              Icons.search,
                              color: Colors.black,
                              size: 35,
                            ),
                            title: Text(
                              "Search anything",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 17),
                            ),
                            trailing: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(13)),
                                  height: 50,
                                  width: 46,
                                ),
                                Positioned(
                                  top: 15,
                                  left: 10,
                                  child: Icon(
                                    Icons.filter_list,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 20),
                          child: TabBar(
                            tabAlignment: TabAlignment.start,
                            isScrollable: true,
                            labelColor: Colors.white,
                            unselectedLabelColor: Colors.black,
                            unselectedLabelStyle: TextStyle(fontSize: 15),
                            indicatorSize: TabBarIndicatorSize.tab,
                            indicatorPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                            indicator: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(15)),
                            tabs: List.generate(
                              providerbj.cataorylist.length,
                              (index) => Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(providerbj.cataorylist[index])),
                            ),
                          ),
                        ),
                        Expanded(
                          child: GridView.builder(
                              itemCount: mylist.length,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      childAspectRatio: 1 / 2,
                                      crossAxisCount: 2),
                              itemBuilder: (context, index) => ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                ProductDetailsScreen(),
                                          ));
                                    },
                                    child: Column(
                                      children: [
                                        Expanded(
                                          child: Container(
                                            height: 600,
                                            width: 180,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                image: DecorationImage(
                                                    fit: BoxFit.fill,
                                                    image: NetworkImage(
                                                        mylist[index]["bg"]))),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  margin: EdgeInsets.all(10),
                                                  height: 40,
                                                  width: 40,
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              9)),
                                                  child: Icon(
                                                    Icons.favorite_border,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              mylist[index]["text"],
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20),
                                            ),
                                            Text(mylist[index]["subtext"],
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15))
                                          ],
                                        )
                                      ],
                                    ),
                                  )),
                        ),
                      ],
                    ),
                  ),
          )),
    );
  }
}
