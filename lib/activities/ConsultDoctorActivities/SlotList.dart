import 'package:flutter/material.dart';

import 'SlotAvailabilityPage.dart';
class SlotList extends StatefulWidget {
  SlotList() : super();
  @override
  SlotListState createState() => SlotListState();
}
class SlotListState extends State<SlotList> {
  //
  List<User> users;
  static User selectedUser;
  static int selectedRadio;
  static int selectedRadioTile;
  @override
  void initState() {
    super.initState();
    selectedRadio = 0;
    selectedRadioTile = 0;
    users = User.getUsers();
  }
  setSelectedRadio(int val) {
    setState(() {
      selectedRadio = val;
    });
  }
  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
    });
  }
  setSelectedUser(User user) {
    setState(() {
      selectedUser = user;
    });
  }
  List<Widget> createRadioListUsers() {
    List<Widget> widgets = [];
    for (User user in users) {
      widgets.add(
        RadioListTile(
          value: user,
          groupValue: selectedUser,
          title: Text(user.firstName),
          onChanged: (currentUser) {
            print("Current User ${currentUser.firstName}");
            setSelectedUser(currentUser);
          },
          selected: selectedUser == user,
          activeColor: Colors.green,
        ),
      );
    }
    return widgets;
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: Container(
          margin: new EdgeInsets.all(10.0),
          color: Colors.white,
          child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  margin: new EdgeInsets.only(left: 100,top: 50,bottom: 50),
                  child: Column(
                    children: createRadioListUsers(),
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}

class User {
  int userId;
  String firstName;
  User({this.userId, this.firstName});

  static List<User> getUsers() {
    return <User>[
      User(userId: 1, firstName: SlotPageWidgetState.t1),
      User(userId: 2, firstName: SlotPageWidgetState.t2),
      User(userId: 3, firstName: SlotPageWidgetState.t3),
      User(userId: 4, firstName: SlotPageWidgetState.t4),
      User(userId: 5, firstName: SlotPageWidgetState.t5),
      User(userId: 5, firstName: SlotPageWidgetState.t6),
    ];
  }
}