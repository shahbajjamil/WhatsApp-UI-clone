/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */
  
import 'package:whatsappp/models/user_model.dart';

class ChatModel {
  final User sender;
  final String text;
  final String time;
  final String avatarUrl;
  final String date;
  final bool video;
  final bool callRecived;
  final bool callConnect;
  final bool unread;

  ChatModel({
    this.sender,
    this.text,
    this.time,
    this.avatarUrl,
    this.date,
    this.video,
    this.callRecived,
    this.callConnect,
    this.unread,
  });
}

// you - current user
final User currentUser = User(
  id: 0,
  name: 'Current User',
  avatarUrl: 'https://randomuser.me/api/portraits/men/86.jpg',
);

// USERS
final User greg = User(
  id: 1,
  name: 'Greg',
  avatarUrl: 'https://randomuser.me/api/portraits/men/96.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  avatarUrl: 'https://randomuser.me/api/portraits/men/95.jpg',
);
final User john = User(
  id: 3,
  name: 'John',
  avatarUrl: 'https://randomuser.me/api/portraits/women/55.jpg',
);
final User olivia = User(
  id: 4,
  name: 'Olivia',
  avatarUrl: 'https://randomuser.me/api/portraits/women/95.jpg',
);
final User sam = User(
  id: 5,
  name: 'Sam',
  avatarUrl: 'https://randomuser.me/api/portraits/women/86.jpg',
);
final User sophia = User(
  id: 6,
  name: 'Sophia',
  avatarUrl: 'https://randomuser.me/api/portraits/women/65.jpg',
);
final User steven = User(
  id: 7,
  name: 'Steven',
  avatarUrl: 'https://randomuser.me/api/portraits/men/98.jpg',
);

List<User> fav = [greg, james, john, olivia, sam, sophia, steven];

//Example for home screen
List<ChatModel> chats = [
  ChatModel(
    sender: greg,
    text: 'when we are having Flutter Workshop',
    time: '15:30 pm',
    date: '20 January,',
    video: false,
    callRecived: true,
    callConnect: true,
    unread: true,
  ),
  ChatModel(
    sender: james,
    text: 'Good question - I am still trying to figure that out!',
    time: '16:34 am',
    date: '20 January,',
    video: true,
    callRecived: false,
    callConnect: false,
    unread: true,
  ),
  ChatModel(
    sender: john,
    text: 'hi bro',
    time: '10:00 pm',
    date: '20 January,',
    video: false,
    callRecived: true,
    callConnect: false,
    unread: true,
  ),
  ChatModel(
    sender: olivia,
    text: 'when we are meeting?',
    time: '15:30 pm',
    date: '20 January,',
    video: true,
    callRecived: false,
    callConnect: true,
    unread: false,
  ),
  ChatModel(
    sender: sam,
    text: 'when we are having Flutter Workshop',
    time: '15:30 pm',
    date: '20 January,',
    video: false,
    callRecived: true,
    callConnect: true,
    unread: false,
  ),
  ChatModel(
    sender: sophia,
    text: 'when we are having Flutter Workshop',
    time: '15:30 pm',
    date: '20 January,',
    video: false,
    callRecived: false,
    callConnect: false,
    unread: false,
  ),
  ChatModel(
    sender: steven,
    text: 'when we are having Flutter Workshop',
    time: '15:30 pm',
    date: '20 January,',
    video: true,
    callRecived: true,
    callConnect: false,
    unread: false,
  ),
];

//Examole for messages conversation
List<ChatModel> message = [
  ChatModel(
    sender: james,
    text: 'I hope we will meet soon',
    time: '1:35 pm',
    date: '20 January,',
    video: true,
    callRecived: true,
    callConnect: false,
    unread: false,
  ),
  ChatModel(
    sender: currentUser,
    text: 'I will be happy to teach you',
    time: '1:30 pm',
    date: '20 January,',
    video: false,
    callRecived: false,
    callConnect: false,
    unread: false,
  ),
  ChatModel(
    sender: james,
    text: 'okay, we love to develop more apps',
    time: '1:25 pm',
    date: '20 January,',
    video: false,
    callRecived: true,
    callConnect: true,
    unread: false,
  ),
  ChatModel(
    sender: currentUser,
    text: 'That\'s nice but its completly depends on your feadback?',
    time: '1:15 pm',
    date: '20 January,',
    video: true,
    callRecived: false,
    callConnect: true,
    unread: false,
  ),
  ChatModel(
    sender: james,
    text: 'But we want more workshop',
    time: '1:10 pm',
    date: '20 January,',
    video: false,
    callRecived: true,
    callConnect: false,
    unread: true,
  ),
  ChatModel(
    sender: currentUser,
    text: 'Good question - I am still trying to figure it out!',
    time: '1:05 pm',
    date: '20 January,',
    video: true,
    callRecived: false,
    callConnect: false,
    unread: true,
  ),
  ChatModel(
    sender: james,
    text: 'when we are having next Flutter Workshop',
    time: '1:00 pm',
    date: '20 January,',
    video: false,
    callRecived: true,
    callConnect: true,
    unread: true,
  ),
];
