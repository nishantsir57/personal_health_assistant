import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:personal_health_assistant/Constants.dart';

class SlotConfirmation
{
  Future<void> slotConfirmation() async
  {
    int slot=Constants.slotSelected;
    String key="1100";
    String time="11:00 AM";
    List<String> l=Constants.d;
    if(slot == 4)
      {
        key='1200';
        time="12:00 PM";
      }
    if(slot == 5)
    {
      key='1300';
      time="01:00 PM";
    }
    if(slot == 6)
    {
      key='1600';
      time="02:00 PM";
    }
    if(slot == 7)
    {
      key='1700';
      time="03:00 PM";
    }
    if(slot == 8)
    {
      key='1800';
      time="04:00 PM";
    }
    await FirebaseFirestore.instance.collection('doctor')
    .doc(Constants.d.first)
    .update(
      {
        key : 'unavailabe'
      }
    );
    await FirebaseFirestore.instance.collection('users').doc(Constants.email).collection('apointments')
    .add(
      {
        'name' : l[0],
        'time' : time,
        'id' : 'IDC$key',
      }
    );
  }
}