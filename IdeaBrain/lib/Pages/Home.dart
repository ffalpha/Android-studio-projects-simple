import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:you2auth/Pages/profile.dart';

class Home extends StatefulWidget {
  const Home({
    Key key,this.user
}):super(key:key);
  final FirebaseUser user;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title:Text('Welcome ') ,

        backgroundColor: Colors.pink,
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.search), onPressed:()=>debugPrint("search")),
          new IconButton(icon: new Icon(Icons.add), onPressed: ()=>debugPrint("Add"))
        ],
      ),
      drawer: new Drawer(
        child:new ListView(
          children: <Widget>[
           new UserAccountsDrawerHeader(
               accountName: new Text('s',
                   style: TextStyle(color: Colors.black)),
               accountEmail:new Text('s',
                   style: TextStyle(color: Colors.black) ),

               decoration: new BoxDecoration(
                 color :Colors.amber
               ),
           ),
            new ListTile(
              title: new Text('My Profile'),
              leading: new Icon(Icons.supervised_user_circle,color: Colors.purpleAccent),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) =>Profilepage() ));
              },
            ),
            new ListTile(
              title: new Text('Forum'),
              leading: new Icon(Icons.forum,color: Colors.purpleAccent),
                onTap: (){

                }

            ),
            new ListTile(
              title: new Text('Resource center'),
              leading: new Icon(Icons.insert_drive_file,color: Colors.purpleAccent),
            ),
            new ListTile(
              title: new Text('Main profile'),
              leading: new Icon(Icons.insert_drive_file,color: Colors.purpleAccent),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context)=>Profilepage(),fullscreenDialog: true));
                }
            ),
            new Divider(
              height: 12.0,
              color: Colors.black,
            ),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close ,color: Colors.purpleAccent),
              onTap: (){
                Navigator.of(context).pop();
              }
              ,
            ),

          ],
        )
      ),body: Center(
      child:Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("You are logged in"),
            SizedBox(height: 15.0),
        new OutlineButton(borderSide: BorderSide(
      color: Colors.red,style: BorderStyle.solid,width: 3.0),
          child: Text('logout'),
          onPressed: (){
          FirebaseAuth.instance.signOut().then((value){}).catchError((e){});
          },
      )
          ],
        ),
        )
      ),
    );

  }
}
