import 'package:contact_app/account_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("My Contacts",
            style: Theme.of(context)
                .textTheme
                .headline2!
                .copyWith(fontSize: 24, color: Colors.black)),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://lh3.googleusercontent.com/ogw/ADea4I67TPfNrh7bfTuRj5yH9cvwutP96B8aib5cRdj05Q=s83-c-mo"),
            ),
          )
        ],
      ),

      //body here
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: InputBorder.none,
                          hintText: ("search by name or number")),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 15),
                // color: Colors.blueGrey,
                child: ListView(children: [
                  Text("Recents"),
                  ContactCard(
                    userContact: 233555656734,
                    userName: "Rondy A. Artlin",
                    imageUrl:
                     "https://cdn.pixabay.com/photo/2016/11/21/12/42/beard-1845166__340.jpg", 
                     onPressed: (){},
                    // "image/jpeg;base64,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",
                    // onPressed: null,
                  ),
                  ContactCard(
                    userName: "Efua Amoah",
                    userContact: 233274689849,
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2018/01/24/19/49/people-3104635__340.jpg",
                    onPressed: (){},
                  ),
                  ContactCard(
                    userName: "Peter Abbew",
                    userContact: 233546465776,
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2015/06/26/18/40/person-822803__340.jpg",
                    onPressed: (){},
                  ),
                  SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Contacts",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    // height: MediaQuery.of(context).size.height*0.05
                  ),
                  SizedBox(
                      child: ListTile(
                          trailing: Text("A",
                              style: TextStyle(fontWeight: FontWeight.bold)))),
                  ContactCard(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (
                            context,
                                ) =>
                                  Detailed()));
                    },
                    userName: "Abeiku Catalyst",
                    userContact: 233567749767,
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2016/11/29/20/22/girl-1871104__340.jpg",
                  ),
                  ContactCard(
                    userName: " Ab Tech",
                    userContact: 233544654468,
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2016/11/29/13/51/alone-1869997__340.jpg",
                    onPressed: (){},
                  ),
                  SizedBox(child: ListTile(trailing: Text("B"))),
                  ContactCard(
                    userName: "Believe Motion",
                    userContact: 233567789878,
                    imageUrl: 
                    "https://cdn.pixabay.com/photo/2018/05/08/08/44/artificial-intelligence-3382507__340.jpg",
                    onPressed: (){},
                  ),
                  ContactCard(
                    userName: "Belinda Etti",
                    userContact: 233556677887,
                    imageUrl:
                        "https://cdn.pixabay.com/photo/2016/11/29/13/14/attractive-1869761__340.jpg",
                    onPressed: (){},
                  ),
                  SizedBox(child: ListTile(trailing: Text('C'))),
                  ContactCard(
                    userName: "Castle Media",
                    userContact: 233657876788,
                    imageUrl: 
                    "https://cdn.pixabay.com/photo/2017/06/10/22/58/composing-2391033__340.jpg",
                    onPressed: (){},
                  ),
                  ContactCard(
                    userName: "Christiana Benson",
                    userContact: 233567665544,
                    imageUrl:
                     "https://cdn.pixabay.com/photo/2017/04/03/10/42/woman-2197947__340.jpg",
                    onPressed: (){},
                  ),
                  // ContactCard(
                  //   userName: "",
                  //   userContact: ,
                  //   imageUrl: "",
                  // ),
                  // ContactCard(
                  //   userName: "",
                  //   userContact: ,
                  //   imageUrl: "",
                  // ),
                  // ContactCard(
                  //   userName: "",
                  //   userContact: ,
                  //   imageUrl: "",
                  // ),
                  // ContactCard(
                  //   userName: "",
                  //   userContact: ,
                  //   imageUrl: "",
                  // ),
                  // ContactCard(
                  //   userName: "",
                  //   userContact: ,
                  //   imageUrl: "",
                  // ),
                ]),
              ),
            )
          ],
        ),
      ),

      //floatingAcion Button
      floatingActionButton: CircleAvatar(
        radius: 30,
        backgroundColor: Color(0xff1a4ada),
        child: CircleAvatar(
            radius: 28,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 40,
              ),
              radius: 23,
              backgroundColor: Color(0xff1a4ada),
            )),
      ),
    );
  }
}

class ContactCard extends StatelessWidget {
  ContactCard(
      {required this.userContact,
      required this.userName,
      required this.imageUrl,
      required this.onPressed});

  final String? userName;
  final int? userContact;
  final String imageUrl;
  final onPressed;
  // final TransitionBuilder;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
          onTap: onPressed,
          
          leading: CircleAvatar(
            backgroundImage: NetworkImage(imageUrl),
          ),
          title: Text(userName!),
          subtitle: Text(userContact.toString()),
          trailing: Icon(Icons.more_horiz)),
    );
  }
}
