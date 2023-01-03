import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final list=[
    "item 1",
    "item 2",
    "item 3",
    "item 4",
  ];
 String selectedValue="Items";

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Container(
              child: GestureDetector(

 onTap: (){
  print('tap');
},
                  onLongPressCancel: (){
                      print('cencel');
                  },
                  onForcePressStart: (details){
                     print('PressStart');
                  },
                  child: Text("hello",style: TextStyle(fontSize: 40),))),

         SingleChildScrollView(),
          LinearProgressIndicator(),


          ExpansionTile(title:

          Text('click here',style: TextStyle(fontWeight: FontWeight.bold),
          ),
        children: [
          ListTile(
            trailing: Icon(Icons.access_alarm),
          ),
          ListTile(
            trailing: Icon(Icons.access_alarm),
          ),
          ListTile(
            trailing: Icon(Icons.access_alarm),
          ),

        ],
          ),

          
      DropdownButton(
          value: selectedValue,
          items: list.map((e){
        return DropdownMenuItem(
          value: e,
            child: Text(e));
      }).toList(), onChanged: (value){
            setState(() {
              selectedValue=value!;
            });
      }),

     
     ClipOval(
       child: Image.network("https://images.unsplash.com/photo-1670272502307-5539ca02550a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1470&q=80",
       fit: BoxFit.fill),
      clipper: MyClip(), ),

    RotatedBox(quarterTurns: 1,child: Text('hello'.toUpperCase()),)  ,

   Card(
     color: Colors.orange,
     child: Container(
         width: 200,
         height: 200,
         child: Text('hello')),
   )
          
          
        ],
      ),
    );
  }
}




class MyClip extends CustomClipper<Rect>{
  @override
  Rect getClip(Size size) {
   return Rect.fromLTWH(5, 5, 500, 500);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
