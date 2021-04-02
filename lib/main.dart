import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(


      backgroundColor: Colors.black,
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(
                    "MyFiles",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),


            ];
          },
          body: ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF151515),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recent files",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Image.asset("images/h&m.png"),
                            Image.asset("images/hollister.png"),
                            Image.asset("images/h&m.png"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.03),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF151515),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 220,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0 , left: 10 , right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(icon: Icon(Icons.image),iconSize: 30,color: Colors.pink, onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.play_arrow), iconSize: 30 ,color: Colors.purpleAccent,onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.audiotrack),iconSize: 30 , color: Colors.blueAccent ,onPressed: () {}),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Images" , style: TextStyle(color: Colors.white),),
                          Text("Videos" , style: TextStyle(color: Colors.white),),
                          Text("Audio" , style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:10.0 , left: 10 , right: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                icon: Icon(Icons.insert_drive_file),color: Colors.orange,iconSize: 30,
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.download_sharp),color: Colors.blue,iconSize: 30,
                                onPressed: () {}),
                            IconButton(
                                icon: Icon(Icons.account_box),color: Colors.yellow, iconSize: 30,onPressed: () {}),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Documents" , style: TextStyle(color: Colors.white),),
                            Text("Downloads" , style: TextStyle(color: Colors.white),),
                            Text("installation files" , style: TextStyle(color: Colors.white),)
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: h * 0.03),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF151515),
                  borderRadius: BorderRadius.circular(30),
                ),
                width: double.infinity,
                height: 350,

                child: Column(children: [
                  columncontent(w, Icon(Icons.storage), "internal storage", "62.13 GB/64.00 GB" , Colors.yellow),
                  columncontent(w, Icon(Icons.sd_card), "SD card", "not interested" , Colors.greenAccent),
                  columncontent(w, Icon(Icons.cloud), "Samsung Cloud ", "Not signed in" , Colors.brown),
                  columncontent(w, Icon(Icons.cloud_rounded), "OneDrive", "Not signed in" , Colors.blue),
                ],)



              ),
              SizedBox(height: h * 0.04),
              Center(child: Text("see what's taking up space on your phone" , style: TextStyle( color: Colors.grey),)),
              SizedBox(height: h * 0.04),
              Padding(
                padding: const EdgeInsets.only(left: 25 , right: 25),
                child: Container(
                  height: 50,
                  child:               RaisedButton(onPressed: (){} , child: Text("Analyse storage" , style: TextStyle(color: Colors.white , fontSize: 20), ),color: Colors.orange, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),),

                ),
              ),
              SizedBox(height: h * 0.04),


            ],
          ),
        ),
      ),

    );
  }
  Widget columncontent ( double Width , Icon I , String s1 ,String s2 , Color C){
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(icon: I,iconSize: 30,color: C, onPressed: (){}),
              Column(
                children: [
                  Text("$s1" , style: TextStyle(color: Colors.white , fontSize: 22),),
                  Text("$s2" , style: TextStyle(color: Color(0xFF373737) , fontSize: 16),)
                ],
              ),
            ],
          ),

        ),
        Container(
          height: 1.5,
          width: Width*0.7 ,
          color: Color(0xFF1C1C1C),
        ),

      ],
    );
  }
}
