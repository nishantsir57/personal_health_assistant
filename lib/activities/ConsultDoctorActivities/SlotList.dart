import 'package:flutter/material.dart';

import '../../Constants.dart';
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
    List<String> s=Constants.d;
    // List<User> l=new List(6);
    print(s[3]);

    return <User>[
      if(s[3] == 'available')
      User(userId: 3, firstName: SlotPageWidgetState.t1),
      if(s[4] == 'available')
      User(userId: 4, firstName: SlotPageWidgetState.t2),
      if(s[5] == 'available')
      User(userId: 5, firstName: SlotPageWidgetState.t3),
      if(s[6] == 'available')
      User(userId: 6, firstName: SlotPageWidgetState.t4),
      if(s[7] == 'available')
      User(userId: 7, firstName: SlotPageWidgetState.t5),
      if(s[8] == 'available')
      User(userId: 8, firstName: SlotPageWidgetState.t6),
    ];
  }
}