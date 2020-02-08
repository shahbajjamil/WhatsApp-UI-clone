/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */


import 'package:flutter/material.dart';
import 'package:whatsappp/models/user_model.dart';
import 'package:whatsappp/pages/message_screen.dart';
import '../models/chat_model.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: chats.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  print("taped");
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessageScreen(user: chats[i].sender,)));
                },
                child: Column(
                  children: <Widget>[
                    Divider(
                      endIndent: 10,
                      indent: 70,
                    ),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(fav[i].avatarUrl),
                      ),
                      title: Text(chats[i].sender.name),
                      subtitle: Text(chats[i].text),
                      trailing: Column(
                        children: <Widget>[
                          Text(chats[i].time),
                          chats[i].unread
                              ? Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Theme.of(context).accentColor,
                                  ),
                                  alignment: Alignment.center,
                                  child: Text(
                                    '1',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              : Text(''),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("new call"),
      ),
    );
  }
}
