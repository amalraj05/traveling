

import 'package:flutter/material.dart';

class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white,elevation: 00,
  leading: Builder(
    builder: (BuildContext context) {
      return IconButton(
        icon: const Icon(
          Icons.menu_outlined,size: 40,
          color: Colors.black, 
        ),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
  ),
),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
             DrawerHeader(
                decoration: BoxDecoration(color: Colors.yellow),
                child: Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 100),
                        child: Image.network("https://pngimg.com/uploads/cycling/cycling_PNG52.png",height: 40,),
                      ),
                      SizedBox(height: 12,),
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text("Traveling",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                      ),
                      Text("www.taimoorsikander.com")
                    ],
                    
                  ),
                ), ),
                ListTile(leading: Icon(Icons.home), 
              title: const Text("Home"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ), 
            ListTile(leading: Icon(Icons.pedal_bike), 
              title: const Text("cycling"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ),
            ListTile(leading: Icon(Icons.bus_alert), 
              title: const Text("Bus"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ),
            ListTile(leading: Icon(Icons.flight_outlined), 
              title: const Text("plane"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ), 
            Divider(color: Colors.grey,thickness: 2,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("profile",style: TextStyle(color: Colors.grey),),
            ),
             ListTile(leading: Icon(Icons.download), 
              title: const Text("Login"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ),
            Divider(color: Colors.grey,thickness: 2,),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text("Communicate",style: TextStyle(color: Colors.grey),),
            ),
             ListTile(leading: Icon(Icons.share), 
              title: const Text("Share"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ),
            ListTile(leading: Icon(Icons.rate_review), 
              title: const Text("rate us"), 
              onTap: () { 
                Navigator.pop(context); 
              }, 
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20,top: 15),
            child: Text("Traveling",style: TextStyle(fontSize: 35),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 65,left: 30),
            child: Text("start a new journey",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w300),),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 185),
            child: Image.network("https://pngimg.com/uploads/cycling/cycling_PNG52.png",height: 150,width: 150,),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, 
             
              
            ),
            
            itemCount: myList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
            height: 150,width: 150,
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10),boxShadow: [BoxShadow(color: Colors.black,blurRadius: 10)]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.network(image[index],height: 70,width: 70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(myList[index],style: TextStyle(fontSize: 20,),),
                )
              ],
            ),
                  ),
                ],
              );
            },),
          )
          ]
    ),
    );
  }
}
final myList = [
  "Walking",
  "Boating",
  "Bus",
  "Train",
  "Bycycle",
  "Plane",
];
List image=[
  "https://openclipart.org/image/800px/201733",
  "https://icon-library.com/images/boat-icon/boat-icon-27.jpg",
  "https://airdrive-images.s3-eu-west-1.amazonaws.com/leeds/img/topic/2018-11-01T18:43:22.64/transport.png",
  "https://pngimg.com/uploads/trian/trian_PNG16662.png",
  "https://airdrive-images.s3-eu-west-1.amazonaws.com/leeds/img/topic/2018-11-01T18:43:22.64/transport.png",
  "https://clipart-library.com/images_k/airplane-silhouette-vector/airplane-silhouette-vector-21.png",
];