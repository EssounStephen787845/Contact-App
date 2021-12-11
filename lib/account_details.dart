import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Detailed extends StatelessWidget {
  // const Detailed({ Key? key }) : super(key: key);
  TextStyle mystyle = TextStyle(fontSize: 25, fontWeight: FontWeight.w300);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color(0xFFDDE7EC),
        appBar: AppBar(
          actions: [
            Icon(
              Icons.more_vert,
              color: Colors.black,
            )
          ],
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text("Contacts",
                style: TextStyle(color: Colors.black, fontSize: 25)),
          ),
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
          // leading:Icon(Icons.arrow_back_ios,color: Colors.black,),
        ),
        body: ListView(
          children: [
            Card(margin: EdgeInsets.zero,
              child: Container(
                height: MediaQuery.of(context).size.height / 2.5,
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CircleAvatar(
                      foregroundImage:NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104__340.jpg"),
                      radius: 95,
                    ),
                    Center(
                        child: Text("Abeiku Catalyst",
                            style: mystyle.copyWith(fontSize: 30))),
                    Center(
                        child: Text(
                      "Accra,Ghana",
                      style: mystyle,
                    )),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.3,
                  child: Column(
                    children: [
                      ListTile(
                        title: Text("Mobile"),
                        subtitle: Text("+233567749767"),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.white,
                                child:IconButton(onPressed: (){}, 
                                icon: Icon(Icons.message, color: Colors.black)),
                                ),SizedBox(
                                width: 5 ),
                                CircleAvatar(
                                backgroundColor: Colors.white,
                                child: IconButton(onPressed: (){}, 
                                icon:Icon(Icons.phone),
                                  color: Colors.black,
                                ))
                          ],
                        ),
                      ),
                      ListTile(
                          title: Text("Email"),
                          subtitle: Text("abc@gmail.com"),
                          trailing: CircleAvatar(
                              backgroundColor: Colors.white,
                              child:IconButton(onPressed: (){}, 
                              icon: Icon(Icons.email, color: Colors.black)) ,
                              )
                              ),
                      ListTile(
                          title: Text("Group"), subtitle: Text("Uni Friends"))
                    ],
                  ),
                ),
              ],
            ),
            Card(margin: EdgeInsets.all(0),elevation: 0.5,
              child: Container(
              
                  // margin: EdgeInsets.symmetric(horizontal: 50),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      // height:MediaQuery.of(context).size.height*0.01,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text("Account Linked"),
                      ],
                    ),
                  ),
                  color: Colors.white),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.17,
              child:Column(
                children: [
                  ListTile(
                    title: Text("Telegram"),
                    trailing: IconButton(
                      padding:EdgeInsets.zero,
                      onPressed: (){},
                     icon: Icon(FontAwesomeIcons.telegram,size: 37,color: Colors.blue,)),
                  ),
                  ListTile(
                    title:Text("WhatsApp"),
                    trailing: IconButton(
                      padding: EdgeInsets.all(0),
                      onPressed: (){},
                     icon: CircleAvatar(backgroundColor: Colors.green,radius: 18,
                       child: Icon(FontAwesomeIcons.whatsapp,size: 28,))),
                  )
                ],
              )
            ),
            Card(margin: EdgeInsets.zero,elevation: 0.5,
              child: Container(color:Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text("More Option"),
                        ],
                      ),
            
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Share Contact"),
              ),
            ),
            SizedBox(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("QR Code"),
              ),
            )
          ],
        ));
  }
}
