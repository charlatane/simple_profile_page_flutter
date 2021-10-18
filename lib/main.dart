import 'package:flutter/material.dart';

void main() {
  runApp(const ProfileApp());
}

class ProfileApp extends StatelessWidget {
  const ProfileApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey,
      appBar:AppBar(title: const Text('Facebook'), centerTitle: true, backgroundColor: Colors.blue[900],),
      body:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget> [
            Stack(
              clipBehavior: Clip.none,
              children: <Widget> [
                Container(
                  margin: const EdgeInsets.all(3.0),
                  child:
                  Image.asset('assets/images/cover.jpg'),
                ),
                const Positioned(
                  left: 0,
                  right: 0,
                  bottom: -60,
      
                  child: Center(
                    child: CircleAvatar(
                      radius: 80,
                      backgroundImage: AssetImage('assets/images/ram.jpg'),
                      ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget> [
                 // ignore: prefer_const_constructors
                 SizedBox(width: 10,),
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(top: 80,left: 0,right: 0,bottom: 0),
                  width: 150,
                  height: 40,
                  //color:Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('+ Add to Story',
                    style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Hind',
                    ),
                    ),
                  ),                
                ),
                // ignore: prefer_const_constructors
                SizedBox(width: 10,),
      
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(top: 80,left: 0,right: 0,bottom: 0),
                  width: 150,
                  height: 40,
                  //color:Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('+ Edit Profile'),
                  ),
                ),
      
                // ignore: prefer_const_constructors
                SizedBox(width: 10,),
      
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(top: 80,left: 0,right: 0,bottom: 0),
                  width: 60,
                  height: 40,
                  //color:Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('...'),
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top:20,left: 20),
              child: const Text('Studies Computer Science and Engineering at Islamic Uviversity of Technology'),
              ),
      
            Container(
              padding: const EdgeInsets.only(top:10,left:20),
              child: const Text('Studied Science at Rajuk Uttara Model College'),
              ),
          
            Container(
              padding: const EdgeInsets.only(top:10,left:20),
              child: const Text('Lives in Dhaka Bangladesh'),
              ),
      
            Container(
              padding: const EdgeInsets.only(top:10,left:20),
              child: const Text('Works in NandByte',
              style: TextStyle(fontFamily: 'Hind',fontSize: 15),
              ),
              ),
      
            Container(
              padding: const EdgeInsets.only(top:10,left:20),
              child: const Text('Joined Facebook in February 2012'),
              ),
      
                Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.only(top: 40,left: 120,right: 0,bottom: 0),
                  width: 160,
                  height: 40,
                  //color:Colors.blue,
                  decoration: BoxDecoration(
                    color: Colors.teal[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Center(
                    child: Text('+ Upload Profile Picture',
                    style: TextStyle(fontFamily: 'Hind'),
                    ),
                  ),                
                ),
      
          ],
        ),
      ),
      
      
    );
  }
}