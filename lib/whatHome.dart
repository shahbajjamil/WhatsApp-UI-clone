/**
 * Author: Shahbaj Jamil
 *profile: https://github.com/shahbajjamil
  */

import 'package:flutter/material.dart';
import 'package:whatsappp/pages/calls.dart';
import 'package:whatsappp/pages/camera.dart';
import 'package:whatsappp/pages/chat.dart';
import 'package:whatsappp/pages/status.dart';

class WhatsHome extends StatefulWidget {
  @override
  _WhatsHomeState createState() => _WhatsHomeState();
}

class _WhatsHomeState extends State<WhatsHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        bottom: TabBar(controller: _tabController, tabs: <Widget>[
          Tab(
            icon: Icon(Icons.camera_alt),
          ),
          Tab(
            text: 'CHATS',
          ),
          Tab(
            text: 'STATUS',
          ),
          Tab(
            text: 'CALLS',
          ),
        ]),
        actions: <Widget>[
          Icon(
            Icons.search,
            size: 28.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
          ),
          Icon(
            Icons.more_vert,
            size: 28.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
          ),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera(),
          Chat(),
          Status(),
          Calls(),
        ],
      ),
    );
  }
}
