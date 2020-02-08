/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:whatsappp/models/chat_model.dart';

class Calls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: chats.length,
          itemBuilder: (context, i){
            return Column(
              children: <Widget>[
                Divider(),
                ListTile(
                  leading: CircleAvatar(
                     radius: 25.0,
                  // foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Colors.grey,
                  backgroundImage: NetworkImage(fav[i].avatarUrl),
                  ),
                  title: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      chats[i].sender.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                subtitle: Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 3.0),
                        child: chats[i].callRecived
                            ? Icon(
                                Icons.call_made,
                                color: chats[i].callConnect
                                    ? Colors.red
                                    : Theme.of(context).accentColor,
                              )
                            : Icon(
                                Icons.call_received,
                                color:  chats[i].callConnect
                                    ? Colors.red
                                    :  Theme.of(context).accentColor,
                              ),
                      ),
                       Padding(
                        padding: const EdgeInsets.only(right: 5.0),
                        child: Text(
                          chats[i].date,
                          style: TextStyle(color: Colors.grey, fontSize: 15.0),
                        ),
                      ),
                       Text(
                        chats[i].time,
                        style: TextStyle(color: Colors.grey, fontSize: 15.0),
                      ),
                    ],
                  ),
                ),
                trailing: Container(
                  child: chats[i].video
                      ? Icon(
                          Icons.call,
                          size: 30.0,
                          color: Theme.of(context).primaryColor,
                        )
                      : Icon(
                          Icons.videocam,
                          size: 30.0,
                          color: Theme.of(context).primaryColor,
                        ),
                ),
                ),
              ],
            );
          }),
          
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
        onPressed: () => print("new call"),
      ),
    );
      
    
  }
}