/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */


import 'package:flutter/material.dart';
import 'package:whatsappp/models/chat_model.dart';
import 'package:whatsappp/models/user_model.dart';

class MessageScreen extends StatefulWidget {
  final User user;

  MessageScreen({this.user});
  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

  _buildMessage(ChatModel message, bool isMe) {
    return Container(
      //  child: Text(message.text),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: isMe ? Color(0xffdcf8c6) : Color(0xffffffff),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 15.0,
      ),
      margin: isMe
          ? EdgeInsets.only(top: 8.0, bottom: 8.0, left: 80.0, right: 6.0)
          : EdgeInsets.only(top: 8.0, bottom: 8.0, right: 80.0, left: 6.0),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(message.text),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(message.time, style: TextStyle(fontSize: 12.0)),
              isMe
                  ? Icon(
                      Icons.done_all,
                      size: 20.0,
                      color: Colors.blueAccent,
                    )
                  : Text(''),
            ],
          ),
        ],
      ),
    );
  }

  _bulidMessageComposer(){
    return Container(
       padding: EdgeInsets.symmetric(horizontal: 8.0),
      height: 60.0,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(60.0),
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.insert_emoticon),
            iconSize: 25.0,
            color: Colors.grey,
            onPressed: () {},
          ),
          Expanded(
            child: TextField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration.collapsed(hintText: 'Type a message'),
            ),
          ),
          IconButton(
            icon: Icon(Icons.attach_file),
            iconSize: 25.0,
            color: Colors.grey,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.camera_alt),
            iconSize: 25.0,
            color: Colors.grey,
            onPressed: () {},
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            height: 60.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60.0),
              color: Theme.of(context).primaryColor,
            ),
            child: IconButton(
              icon: Icon(Icons.mic),
              iconSize: 25.0,
              color: Colors.white,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffece5dd),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundColor: Colors.grey,
              backgroundImage: NetworkImage(widget.user.avatarUrl),
            ),
            SizedBox(
              width: 8.0,
            ),
            Text(widget.user.name),
          ],
        ),
        actions: <Widget>[
          Icon(
            Icons.videocam,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Icon(
            Icons.call,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
          ),
          Icon(
            Icons.more_vert,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              child: ListView.builder(
                reverse: true,
                  itemCount: message.length,
                  itemBuilder: (context, i) {
                    final bool isMe = message[i].sender.id == currentUser.id;
                    return _buildMessage(message[i], isMe);
                  }),
            ),
          ),
          _bulidMessageComposer(),
        ],
      ),
    );
  }
}
